🛡️ Teams / Outlook 365 Anti-AFK
=================================

This PowerShell script prevents Microsoft Teams or Outlook 365 from marking you as "Away" by simulating periodic user activity. It toggles the NumLock key every 20 seconds, keeping your presence status "Available".

⚠️ Use responsibly and only where permitted. This script is provided for educational and testing purposes.

📦 Features
-----------
- Keeps your Teams / Outlook 365 status active
- Lightweight and easy to run
- Requires no additional software
- Visible console output with timestamps

🖥️ How It Works
----------------
The script uses the `WScript.Shell` COM object to send NumLock key presses:
```powershell
$WShell.SendKeys("{NUMLOCK}")
```

It toggles NumLock on and off every 20 seconds to simulate activity.

▶️ Usage
--------
1. Open PowerShell (Windows only)
2. Copy and paste the following code:

```powershell
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
```

3. Run it and leave the window open while working or away.

💡 Make sure NumLock toggling doesn’t interfere with your work or accessibility needs.

🧪 Requirements
----------------
- Windows OS
- PowerShell
- NumLock key present on your keyboard

⚠️ Disclaimer
-------------
This script is provided "as-is" without any warranty. Use at your own risk. It is intended for educational or testing purposes only. Misuse in a professional or monitored environment may violate company policies or terms of service.

📄 License
----------
MIT License – see LICENSE for details.

💬 Feedback & Contributions
----------------------------
Feel free to open an issue or pull request if you'd like to suggest improvements or features.
