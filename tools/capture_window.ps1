param(
    [Parameter(Mandatory = $true)]
    [int]$ProcessId,
    [Parameter(Mandatory = $true)]
    [string]$OutputPath
)

Add-Type -AssemblyName System.Drawing
Add-Type @'
using System;
using System.Runtime.InteropServices;

public static class WindowCaptureNative {
    [StructLayout(LayoutKind.Sequential)]
    public struct RECT { public int Left, Top, Right, Bottom; }

    [DllImport("user32.dll")]
    public static extern bool GetClientRect(IntPtr window, out RECT rect);

    [DllImport("user32.dll")]
    public static extern bool PrintWindow(IntPtr window, IntPtr dc, uint flags);
}
'@

$process = Get-Process -Id $ProcessId -ErrorAction Stop
$handle = $process.MainWindowHandle
if ($handle -eq [IntPtr]::Zero) {
    throw "Process $ProcessId has no main window"
}
$rect = New-Object WindowCaptureNative+RECT
if (-not [WindowCaptureNative]::GetClientRect($handle, [ref]$rect)) {
    throw "GetClientRect failed"
}
$width = $rect.Right - $rect.Left
$height = $rect.Bottom - $rect.Top
if ($width -le 0 -or $height -le 0) {
    throw "Window client area is empty"
}

$bitmap = New-Object System.Drawing.Bitmap($width, $height)
$graphics = [System.Drawing.Graphics]::FromImage($bitmap)
$dc = $graphics.GetHdc()
try {
    # PW_CLIENTONLY | PW_RENDERFULLCONTENT
    if (-not [WindowCaptureNative]::PrintWindow($handle, $dc, 3)) {
        throw "PrintWindow failed"
    }
} finally {
    $graphics.ReleaseHdc($dc)
    $graphics.Dispose()
}
$absolute = [IO.Path]::GetFullPath($OutputPath)
$directory = [IO.Path]::GetDirectoryName($absolute)
[IO.Directory]::CreateDirectory($directory) | Out-Null
$bitmap.Save($absolute, [System.Drawing.Imaging.ImageFormat]::Png)
$bitmap.Dispose()
Write-Output $absolute
