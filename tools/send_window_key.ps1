param(
    [Parameter(Mandatory = $true)]
    [int]$ProcessId,
    [Parameter(Mandatory = $true)]
    [int]$VirtualKey,
    [int]$HoldMilliseconds = 35
)

Add-Type @'
using System;
using System.Runtime.InteropServices;

public static class WindowKeyNative {
    [DllImport("user32.dll")]
    public static extern bool PostMessage(IntPtr window, uint message, UIntPtr wParam, IntPtr lParam);
}
'@

$process = Get-Process -Id $ProcessId -ErrorAction Stop
$handle = $process.MainWindowHandle
if ($handle -eq [IntPtr]::Zero) {
    throw "Process $ProcessId has no main window"
}
if (-not [WindowKeyNative]::PostMessage($handle, 0x0100, [UIntPtr]$VirtualKey, [IntPtr]1)) {
    throw "WM_KEYDOWN failed"
}
Start-Sleep -Milliseconds $HoldMilliseconds
$keyUpState = [IntPtr]([long]0xC0000001)
if (-not [WindowKeyNative]::PostMessage($handle, 0x0101, [UIntPtr]$VirtualKey, $keyUpState)) {
    throw "WM_KEYUP failed"
}
