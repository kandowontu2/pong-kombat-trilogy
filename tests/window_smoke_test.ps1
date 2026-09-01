param(
    [Parameter(Mandatory = $true)]
    [string]$Executable
)

$ErrorActionPreference = 'Stop'

Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;

public static class PK3WindowProbe {
    public delegate bool EnumWindowsProc(IntPtr hwnd, IntPtr lParam);

    [StructLayout(LayoutKind.Sequential)]
    public struct RECT { public int Left, Top, Right, Bottom; }

    [DllImport("user32.dll")]
    private static extern bool EnumWindows(EnumWindowsProc callback, IntPtr lParam);
    [DllImport("user32.dll")]
    private static extern uint GetWindowThreadProcessId(IntPtr hwnd, out uint processId);
    [DllImport("user32.dll", CharSet = CharSet.Unicode)]
    private static extern int GetWindowText(IntPtr hwnd, System.Text.StringBuilder text, int count);
    [DllImport("user32.dll", EntryPoint = "GetWindowLongPtrW")]
    public static extern IntPtr GetWindowLongPtr(IntPtr hwnd, int index);
    [DllImport("user32.dll")]
    public static extern bool GetWindowRect(IntPtr hwnd, out RECT rect);
    [DllImport("user32.dll")]
    public static extern bool PostMessage(IntPtr hwnd, uint message, IntPtr wParam, IntPtr lParam);
    [DllImport("user32.dll")]
    public static extern IntPtr SendMessage(IntPtr hwnd, uint message, IntPtr wParam, IntPtr lParam);

    public static IntPtr FindForProcess(int wantedProcessId) {
        IntPtr result = IntPtr.Zero;
        EnumWindows((hwnd, ignored) => {
            uint processId;
            GetWindowThreadProcessId(hwnd, out processId);
            if (processId == (uint)wantedProcessId) {
                var title = new System.Text.StringBuilder(256);
                GetWindowText(hwnd, title, title.Capacity);
                if (title.ToString().Contains("Pong Kombat Trilogy")) {
                    result = hwnd;
                    return false;
                }
            }
            return true;
        }, IntPtr.Zero);
        return result;
    }
}
'@

$resolved = (Resolve-Path -LiteralPath $Executable).Path
$process = Start-Process -FilePath $resolved -WindowStyle Hidden -PassThru
try {
    $window = [IntPtr]::Zero
    for ($attempt = 0; $attempt -lt 50 -and $window -eq [IntPtr]::Zero; $attempt++) {
        Start-Sleep -Milliseconds 50
        $window = [PK3WindowProbe]::FindForProcess($process.Id)
    }
    if ($window -eq [IntPtr]::Zero) { throw 'native window was not created' }

    $GWL_STYLE = -16
    $WM_SYSKEYDOWN = 0x0104
    $WM_CLOSE = 0x0010
    $VK_RETURN = 0x0D
    $ALT_CONTEXT = [IntPtr](1L -shl 29)
    $overlappedMask = 0x00CF0000L

    $beforeStyle = [PK3WindowProbe]::GetWindowLongPtr($window, $GWL_STYLE).ToInt64()
    $beforeRect = New-Object PK3WindowProbe+RECT
    [void][PK3WindowProbe]::GetWindowRect($window, [ref]$beforeRect)

    [void][PK3WindowProbe]::SendMessage($window, $WM_SYSKEYDOWN, [IntPtr]$VK_RETURN, $ALT_CONTEXT)
    Start-Sleep -Milliseconds 250
    $fullscreenStyle = [PK3WindowProbe]::GetWindowLongPtr($window, $GWL_STYLE).ToInt64()
    $fullscreenRect = New-Object PK3WindowProbe+RECT
    [void][PK3WindowProbe]::GetWindowRect($window, [ref]$fullscreenRect)

    if (($beforeStyle -band $overlappedMask) -eq 0) { throw 'initial window style was not overlapped' }
    if (($fullscreenStyle -band $overlappedMask) -ne 0) {
        throw ('Alt+Enter did not remove the overlapped window frame (before=0x{0:X}, after=0x{1:X})' -f $beforeStyle, $fullscreenStyle)
    }
    if (($fullscreenRect.Right - $fullscreenRect.Left) -le ($beforeRect.Right - $beforeRect.Left)) {
        throw 'Alt+Enter did not expand the window to its monitor'
    }

    [void][PK3WindowProbe]::SendMessage($window, $WM_SYSKEYDOWN, [IntPtr]$VK_RETURN, $ALT_CONTEXT)
    Start-Sleep -Milliseconds 250
    $restoredStyle = [PK3WindowProbe]::GetWindowLongPtr($window, $GWL_STYLE).ToInt64()
    if (($restoredStyle -band $overlappedMask) -ne ($beforeStyle -band $overlappedMask)) {
        throw 'second Alt+Enter did not restore the window frame'
    }

    [pscustomobject]@{
        Result = 'PASS'
        ProcessId = $process.Id
        WindowedSize = "$(($beforeRect.Right - $beforeRect.Left))x$(($beforeRect.Bottom - $beforeRect.Top))"
        FullscreenSize = "$(($fullscreenRect.Right - $fullscreenRect.Left))x$(($fullscreenRect.Bottom - $fullscreenRect.Top))"
        AltEnterRoundTrip = $true
    } | ConvertTo-Json

    [void][PK3WindowProbe]::PostMessage($window, $WM_CLOSE, [IntPtr]::Zero, [IntPtr]::Zero)
    [void]$process.WaitForExit(3000)
    exit 0
}
finally {
    if (-not $process.HasExited) {
        Stop-Process -Id $process.Id -Force
    }
}
