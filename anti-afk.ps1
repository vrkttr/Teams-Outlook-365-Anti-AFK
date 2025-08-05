Clear-Host
$WShell = New-Object -ComObject "WScript.Shell"
Write-Host "$(Get-Date -Format 'HH:mm:ss') - Anti-AFK started" -ForegroundColor Red

while ($true) {
    $WShell.SendKeys("{NUMLOCK}")
    Start-Sleep -Milliseconds 500
    $WShell.SendKeys("{NUMLOCK}")
    Write-Host "$(Get-Date -Format 'HH:mm:ss') - NumLock toggled." -ForegroundColor Cyan
    Start-Sleep -Seconds 20
}
