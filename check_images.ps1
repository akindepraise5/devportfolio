Add-Type -AssemblyName System.Drawing
$folder = "c:\Users\USER\Desktop\Vibecoding for money\devportfolio\assets\My images"
Get-ChildItem -Path $folder -File | ForEach-Object {
    $img = [System.Drawing.Image]::FromFile($_.FullName)
    Write-Output "$($_.Name): $($img.Width)x$($img.Height)"
    $img.Dispose()
}
