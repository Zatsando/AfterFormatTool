Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$ErrorActionPreference = 'SilentlyContinue'
$wshell = New-Object -ComObject Wscript.Shell
$Button = [System.Windows.MessageBoxButton]::YesNoCancel
$ErrorIco = [System.Windows.MessageBoxImage]::Error
$Ask = 'Do you want to run this as an Administrator?
        Select "Yes" to Run as an Administrator
        Select "No" to not run this as an Administrator
        
        Select "Cancel" to stop the script.'

If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
	$Prompt = [System.Windows.MessageBox]::Show($Ask, "Run as an Administrator or not?", $Button, $ErrorIco) 
	Switch ($Prompt) {
		#This will debloat Windows 10
		Yes {
			Write-Host "You didn't run this script as an Administrator. This script will self elevate to run as an Administrator and continue."
			Start-Process PowerShell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
			Exit
		}
		No {
			Break
		}
	}
}

$Form = New-Object system.Windows.Forms.Form
$Form.ClientSize = New-Object System.Drawing.Point(1300, 700)
$Form.BackColor = "gray"
$Form.text = "Supernite"
$Form.TopMost = $false

$Panel1 = New-Object system.Windows.Forms.Panel
$Panel1.height = 171
$Panel1.width = 1400
$Panel1.location = New-Object System.Drawing.Point(9, 90)

$Label1 = New-Object system.Windows.Forms.Label
$Label1.text = "Supernite (Windows 10 edition)"
$Label1.AutoSize = $true
$Label1.width = 40
$Label1.height = 20
$Label1.location = New-Object System.Drawing.Point(10, 40), [System.Drawing.FontStyle]::Bold
$Label1.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 30)

$installchoco = New-Object system.Windows.Forms.Button
$installchoco.text = "Install Chocolatey"
$installchoco.BackColor = "green"
$installchoco.width = 200
$installchoco.height = 115
$installchoco.location = New-Object System.Drawing.Point(16, 19)
$installchoco.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 16)

$brave = New-Object system.Windows.Forms.Button
$brave.text = "Brave Browser"
$brave.BackColor = "white"
$brave.width = 150
$brave.height = 30
$brave.location = New-Object System.Drawing.Point(250, 19)
$brave.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$parsec = New-Object system.Windows.Forms.Button
$parsec.text = "Parsec"
$parsec.BackColor = "white"
$parsec.width = 150
$parsec.height = 30
$parsec.location = New-Object System.Drawing.Point(250, 51)
$parsec.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$winrar = New-Object system.Windows.Forms.Button
$winrar.text = "Win-Rar"
$winrar.BackColor = "white"
$winrar.width = 150
$winrar.height = 30
$winrar.location = New-Object System.Drawing.Point(584, 84)
$winrar.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$xnview = New-Object system.Windows.Forms.Button
$xnview.text = "X-View"
$xnview.BackColor = "white"
$xnview.width = 150
$xnview.height = 30
$xnview.location = New-Object System.Drawing.Point(417, 19)
$xnview.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$qbittorrent = New-Object system.Windows.Forms.Button
$qbittorrent.text = "QBittorrent"
$qbittorrent.BackColor = "white"
$qbittorrent.width = 150
$qbittorrent.height = 30
$qbittorrent.location = New-Object System.Drawing.Point(417, 51)
$qbittorrent.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$steam = New-Object system.Windows.Forms.Button
$steam.text = "Steam"
$steam.BackColor = "white"
$steam.width = 150
$steam.height = 30
$steam.location = New-Object System.Drawing.Point(417, 84)
$steam.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$greenshot = New-Object system.Windows.Forms.Button
$greenshot.text = "Greenshot"
$greenshot.BackColor = "white"
$greenshot.width = 150
$greenshot.height = 30
$greenshot.location = New-Object System.Drawing.Point(250, 84)
$greenshot.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$intellij = New-Object system.Windows.Forms.Button
$intellij.text = "IntelliJ"
$intellij.BackColor = "white"
$intellij.width = 150
$intellij.height = 30
$intellij.location = New-Object System.Drawing.Point(250, 117)
$intellij.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$powertoys = New-Object system.Windows.Forms.Button
$powertoys.text = "Power Toys"
$powertoys.BackColor = "white"
$powertoys.width = 150
$powertoys.height = 30
$powertoys.location = New-Object System.Drawing.Point(417, 117)
$powertoys.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$mysqlworkbench = New-Object system.Windows.Forms.Button
$mysqlworkbench.text = "MySQL Workbench"
$mysqlworkbench.BackColor = "white"
$mysqlworkbench.width = 150
$mysqlworkbench.height = 30
$mysqlworkbench.location = New-Object System.Drawing.Point(584, 51)
$mysqlworkbench.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$vlc = New-Object system.Windows.Forms.Button
$vlc.text = "VLC"
$vlc.BackColor = "white"
$vlc.width = 150
$vlc.height = 30
$vlc.location = New-Object System.Drawing.Point(584, 19)
$vlc.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$jpegview = New-Object system.Windows.Forms.Button
$jpegview.text = "JpegView"
$jpegview.BackColor = "white"
$jpegview.width = 150
$jpegview.height = 30
$jpegview.location = New-Object System.Drawing.Point(584, 117)
$jpegview.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$androidstudio = New-Object system.Windows.Forms.Button
$androidstudio.text = "Android Studio"
$androidstudio.BackColor = "white"
$androidstudio.width = 150
$androidstudio.height = 30
$androidstudio.location = New-Object System.Drawing.Point(751, 84)
$androidstudio.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$onlyoffice = New-Object system.Windows.Forms.Button
$onlyoffice.text = "OnlyOffice"
$onlyoffice.BackColor = "white"
$onlyoffice.width = 150
$onlyoffice.height = 30
$onlyoffice.location = New-Object System.Drawing.Point(751, 51)
$onlyoffice.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$ungoogled = New-Object system.Windows.Forms.Button
$ungoogled.text = "UnGoogled Chromium"
$ungoogled.BackColor = "white"
$ungoogled.width = 150
$ungoogled.height = 30
$ungoogled.location = New-Object System.Drawing.Point(751, 117)
$ungoogled.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$vscode = New-Object system.Windows.Forms.Button
$vscode.text = "VS Code"
$vscode.BackColor = "white"
$vscode.width = 150
$vscode.height = 30
$vscode.location = New-Object System.Drawing.Point(751, 19)
$vscode.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$discord = New-Object system.Windows.Forms.Button
$discord.text = "Discord"
$discord.BackColor = "white"
$discord.width = 150
$discord.height = 30
$discord.location = New-Object System.Drawing.Point(920, 19)
$discord.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$git = New-Object system.Windows.Forms.Button
$git.text = "Git"
$git.BackColor = "white"
$git.width = 150
$git.height = 30
$git.location = New-Object System.Drawing.Point(920, 51)
$git.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$barrier = New-Object system.Windows.Forms.Button
$barrier.text = "Barrier"
$barrier.BackColor = "white"
$barrier.width = 150
$barrier.height = 30
$barrier.location = New-Object System.Drawing.Point(920, 84)
$barrier.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$battlenet = New-Object system.Windows.Forms.Button
$battlenet.text = "Battle.net"
$battlenet.BackColor = "white"
$battlenet.width = 150
$battlenet.height = 30
$battlenet.location = New-Object System.Drawing.Point(1090, 19)
$battlenet.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$unifiedremote = New-Object system.Windows.Forms.Button
$unifiedremote.text = "Unified Remote"
$unifiedremote.BackColor = "white"
$unifiedremote.width = 150
$unifiedremote.height = 30
$unifiedremote.location = New-Object System.Drawing.Point(1090, 51)
$unifiedremote.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$geforcenow = New-Object system.Windows.Forms.Button
$geforcenow.text = "Nvidia GeforceNow"
$geforcenow.BackColor = "white"
$geforcenow.width = 150
$geforcenow.height = 30
$geforcenow.location = New-Object System.Drawing.Point(1090, 84)
$geforcenow.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label2 = New-Object system.Windows.Forms.Label
$Label2.text = "(Chocolatey Required for installs)    Press the app you want to be installed and wait for the 'Operation Completed' alert!"
$Label2.BackColor = "red"
$Label2.AutoSize = $true
$Label2.width = 25
$Label2.height = 10
$Label2.location = New-Object System.Drawing.Point(478, 3)
$Label2.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Panel2 = New-Object system.Windows.Forms.Panel
$Panel2.height = 159
$Panel2.width = 588
$Panel2.location = New-Object System.Drawing.Point(9, 293)

$Label3 = New-Object system.Windows.Forms.Label
$Label3.text = "System Tweaks"
$Label3.AutoSize = $true
$Label3.width = 230
$Label3.height = 25
$Label3.location = New-Object System.Drawing.Point(100, 255)
$Label3.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 24)

$essentialtweaks = New-Object system.Windows.Forms.Button
$essentialtweaks.text = "Essential Tweaks"
$essentialtweaks.BackColor = "green"
$essentialtweaks.width = 200
$essentialtweaks.height = 115
$essentialtweaks.location = New-Object System.Drawing.Point(30, 45)
$essentialtweaks.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 14)

$backgroundapps = New-Object system.Windows.Forms.Button
$backgroundapps.text = "Background Apps"
$backgroundapps.BackColor = "white"
$backgroundapps.width = 150
$backgroundapps.height = 30
$backgroundapps.location = New-Object System.Drawing.Point(251, 55)
$backgroundapps.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$cortana = New-Object system.Windows.Forms.Button
$cortana.text = "Cortana"
$cortana.BackColor = "white"
$cortana.width = 150
$cortana.height = 30
$cortana.location = New-Object System.Drawing.Point(251, 92)
$cortana.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$windowssearch = New-Object system.Windows.Forms.Button
$windowssearch.text = "Windows Search"
$windowssearch.BackColor = "white"
$windowssearch.width = 150
$windowssearch.height = 30
$windowssearch.location = New-Object System.Drawing.Point(417, 129)
$windowssearch.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$actioncenter = New-Object system.Windows.Forms.Button
$actioncenter.text = "Action Center"
$actioncenter.BackColor = "white"
$actioncenter.width = 150
$actioncenter.height = 30
$actioncenter.location = New-Object System.Drawing.Point(251, 19)
$actioncenter.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$darkmode = New-Object system.Windows.Forms.Button
$darkmode.text = "Dark Mode"
$darkmode.BackColor = "white"
$darkmode.width = 150
$darkmode.height = 30
$darkmode.location = New-Object System.Drawing.Point(417, 17)
$darkmode.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$visualfx = New-Object system.Windows.Forms.Button
$visualfx.text = "Visual FX"
$visualfx.BackColor = "white"
$visualfx.width = 150
$visualfx.height = 30
$visualfx.location = New-Object System.Drawing.Point(417, 92)
$visualfx.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$onedrive = New-Object system.Windows.Forms.Button
$onedrive.text = "OneDrive"
$onedrive.BackColor = "white"
$onedrive.width = 150
$onedrive.height = 30
$onedrive.location = New-Object System.Drawing.Point(251, 130)
$onedrive.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$Panel3 = New-Object system.Windows.Forms.Panel
$Panel3.height = 158
$Panel3.width = 440
$Panel3.location = New-Object System.Drawing.Point(601, 293)

$Label4 = New-Object system.Windows.Forms.Label
$Label4.text = "Security"
$Label4.AutoSize = $true
$Label4.width = 117
$Label4.height = 25
$Label4.location = New-Object System.Drawing.Point(761, 258)
$Label4.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 24)

$securitylow = New-Object system.Windows.Forms.Button
$securitylow.text = "Low"
$securitylow.BackColor = "red"
$securitylow.width = 150
$securitylow.height = 30
$securitylow.location = New-Object System.Drawing.Point(36, 129)
$securitylow.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 15, [System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$securityhigh = New-Object system.Windows.Forms.Button
$securityhigh.text = "High"
$securityhigh.BackColor = "green"
$securityhigh.width = 150
$securityhigh.height = 30
$securityhigh.location = New-Object System.Drawing.Point(244, 129)
$securityhigh.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 15, [System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$Label5 = New-Object system.Windows.Forms.Label
$Label5.text = "- Set UAC to Never Prompt"
$Label5.AutoSize = $true
$Label5.width = 150
$Label5.height = 10
$Label5.location = New-Object System.Drawing.Point(24, 70)
$Label5.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label6 = New-Object system.Windows.Forms.Label
$Label6.text = "- Disable Windows Defender"
$Label6.AutoSize = $true
$Label6.width = 150
$Label6.height = 10
$Label6.location = New-Object System.Drawing.Point(24, 36)
$Label6.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label7 = New-Object system.Windows.Forms.Label
$Label7.text = "- Disable Defender Updates"
$Label7.AutoSize = $true
$Label7.width = 150
$Label7.height = 10
$Label7.location = New-Object System.Drawing.Point(24, 53)
$Label7.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label8 = New-Object system.Windows.Forms.Label
$Label8.text = "- Disable Windows Malware Scan"
$Label8.AutoSize = $true
$Label8.width = 150
$Label8.height = 10
$Label8.location = New-Object System.Drawing.Point(24, 105)
$Label8.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label9 = New-Object system.Windows.Forms.Label
$Label9.text = "- Disable Meltdown Flag"
$Label9.AutoSize = $true
$Label9.width = 150
$Label9.height = 10
$Label9.location = New-Object System.Drawing.Point(24, 88)
$Label9.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label10 = New-Object system.Windows.Forms.Label
$Label10.text = "- Set UAC to Always Prompt"
$Label10.AutoSize = $true
$Label10.width = 25
$Label10.height = 10
$Label10.location = New-Object System.Drawing.Point(233, 105)
$Label10.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label11 = New-Object system.Windows.Forms.Label
$Label11.text = "- Enable Windows Defender"
$Label11.AutoSize = $true
$Label11.width = 25
$Label11.height = 10
$Label11.location = New-Object System.Drawing.Point(233, 92)
$Label11.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label12 = New-Object system.Windows.Forms.Label
$Label12.text = "- Enable Windows Malware Scan"
$Label12.AutoSize = $true
$Label12.width = 25
$Label12.height = 10
$Label12.location = New-Object System.Drawing.Point(233, 60)
$Label12.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label13 = New-Object system.Windows.Forms.Label
$Label13.text = "- Enable Meltdown Flag"
$Label13.AutoSize = $true
$Label13.width = 25
$Label13.height = 10
$Label13.location = New-Object System.Drawing.Point(233, 77)
$Label13.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label15 = New-Object system.Windows.Forms.Label
$Label15.text = "Windows Update"
$Label15.AutoSize = $true
$Label15.width = 25
$Label15.height = 10
$Label15.location = New-Object System.Drawing.Point(58, 469)
$Label15.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 24)

$Panel4 = New-Object system.Windows.Forms.Panel
$Panel4.height = 168
$Panel4.width = 340
$Panel4.location = New-Object System.Drawing.Point(9, 491)

$defaultwindowsupdate = New-Object system.Windows.Forms.Button
$defaultwindowsupdate.text = "Default Settings"
$defaultwindowsupdate.BackColor = "red"
$defaultwindowsupdate.width = 300
$defaultwindowsupdate.height = 30
$defaultwindowsupdate.location = New-Object System.Drawing.Point(20, 23)
$defaultwindowsupdate.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 14)

$securitywindowsupdate = New-Object system.Windows.Forms.Button
$securitywindowsupdate.text = "Security Updates Only"
$securitywindowsupdate.BackColor = "green"
$securitywindowsupdate.width = 300
$securitywindowsupdate.height = 30
$securitywindowsupdate.location = New-Object System.Drawing.Point(20, 130)
$securitywindowsupdate.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 14)

$Label16 = New-Object system.Windows.Forms.Label
$Label16.text = "I recommend doing security updates only."
$Label16.AutoSize = $true
$Label16.width = 25
$Label16.height = 10
$Label16.location = New-Object System.Drawing.Point(47, 59)
$Label16.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label17 = New-Object system.Windows.Forms.Label
$Label17.text = "- Delays Features updates up to 3 years"
$Label17.AutoSize = $true
$Label17.width = 25
$Label17.height = 10
$Label17.location = New-Object System.Drawing.Point(71, 76)
$Label17.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label18 = New-Object system.Windows.Forms.Label
$Label18.text = "- Delays Security updates 4 days"
$Label18.AutoSize = $true
$Label18.width = 25
$Label18.height = 10
$Label18.location = New-Object System.Drawing.Point(71, 94)
$Label18.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label19 = New-Object system.Windows.Forms.Label
$Label19.text = "- Sets Maximum Active Time"
$Label19.AutoSize = $true
$Label19.width = 25
$Label19.height = 10
$Label19.location = New-Object System.Drawing.Point(71, 113)
$Label19.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label20 = New-Object system.Windows.Forms.Label
$Label20.text = "'Sophia' debloat script (by farag2)"
$Label20.AutoSize = $true
$Label20.width = 169
$Label20.height = 23
$Label20.location = New-Object System.Drawing.Point(581, 463)
$Label20.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 24)

$Label21 = New-Object system.Windows.Forms.Label
$Label21.text = "Despite the above features, this script does all the job and much more. It will modify your system and I highly
recommend backing up any data you have prior to running! This is made by 'farag2'. You can hop to his github page and give him a star for his project!"
$Label21.AutoSize = $true
$Label21.width = 150
$Label21.height = 10
$Label21.location = New-Object System.Drawing.Point(390, 507)
$Label21.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$Label22 = New-Object system.Windows.Forms.Label
$Label22.text = "(Unsure? Just apply Essential Tweaks)"
$Label22.AutoSize = $true
$Label22.width = 150
$Label22.height = 10
$Label22.location = New-Object System.Drawing.Point(4, 14)
$Label22.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

$sophia = New-Object system.Windows.Forms.Button
$sophia.text = "Download Sophia"
$sophia.BackColor = "green"
$sophia.width = 200
$sophia.height = 115
$sophia.location = New-Object System.Drawing.Point(650, 550)
$sophia.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 16)

# $Label23 = New-Object system.Windows.Forms.Label
# $Label23.text = "- Need to Restore action center, cortana, etc.? Run the Restore Script: https://youtu.be/H2ydDcqRZyM"
# $Label23.AutoSize = $true
# $Label23.width = 150
# $Label23.height = 10
# $Label23.location = New-Object System.Drawing.Point(390, 529)
# $Label23.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

# $PictureBox1 = New-Object system.Windows.Forms.PictureBox
# $PictureBox1.width = 412
# $PictureBox1.height = 125
# $PictureBox1.location = New-Object System.Drawing.Point(449, 541)
# $PictureBox1.imageLocation = ""
# $PictureBox1.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::zoom
$lightmode = New-Object system.Windows.Forms.Button
$lightmode.text = "Light Mode"
$lightmode.BackColor = "white"
$lightmode.width = 150
$lightmode.height = 30
$lightmode.location = New-Object System.Drawing.Point(417, 55)
$lightmode.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$Form.controls.AddRange(@($Panel1, $Label1, $Panel2, $Label3, $Panel3, $Label4, $Label15, $Panel4, $Label20, $Label21, $Label23, $PictureBox1, $sophia))
$Panel1.controls.AddRange(@($installchoco,$ungoogled, $powertoys, $intellij, $geforcenow, $unifiedremote, $battlenet, $brave, $parsec, $barrier, $discord, $winrar, $xnview, $qbittorrent, $steam, $greenshot, $mysqlworkbench,$jpegview, $vlc, $androidstudio, $onlyoffice, $vscode, $git, $Label2))
$Panel2.controls.AddRange(@($essentialtweaks, $backgroundapps, $cortana, $windowssearch, $actioncenter, $darkmode, $visualfx, $onedrive, $Label22, $lightmode))
$Panel3.controls.AddRange(@($securitylow, $securityhigh, $Label5, $Label6, $Label7, $Label8, $Label9, $Label10, $Label11, $Label12, $Label13))
$Panel4.controls.AddRange(@($defaultwindowsupdate, $securitywindowsupdate, $Label16, $Label17, $Label18, $Label19))


$installchoco.Add_Click( { 
		Write-Host "Installing Chocolatey"
		Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
		choco install chocolatey-core.extension -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$brave.Add_Click( { 
		Invoke-WebRequest -Uri "https://laptop-updates.brave.com/download/CHR253" -OutFile $env:USERPROFILE\Downloads\brave.exe
		~/Downloads/brave.exe
	})

$parsec.Add_Click( { 
		Write-Host "Installing Parsec"
		choco install parsec -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$discord.Add_Click( {
		Write-Host "Installing Discord"
		choco install discord -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$git.Add_Click( {
		Write-Host "Installing Git"
		choco install git.install -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$barrier.Add_Click( {
		Write-Host "Installing Barrier"
		choco install barrier -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$xnview.Add_Click( { 
		Write-Host "Installing X-View (Image Viewer)"
		choco install xnview -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$qbittorrent.Add_Click( { 
		Write-Host "Installing QBittorrent"
		choco install qbittorrent -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$steam.Add_Click( { 
		Write-Host "Installing Steam"
		choco install steam -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$greenshot.Add_Click( {
		Write-Host "Installing Greenshot"
		choco install greenshot -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})	

$vlc.Add_Click( { 
		Write-Host "Installing VLC Media Player"
		choco install vlc -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$jpegview.Add_Click( { 
	Write-Host "Installing JpegView"
	choco install jpegview -y
	$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$mysqlworkbench.Add_Click( { 
		Write-Host "Installing MySQL Workbench"
		choco install mysql.workbench-be -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$winrar.Add_Click( { 
		Write-Host "Installing Win-Rar Compression Tool"
		choco install winrar -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$vscode.Add_Click( { 
		Write-Host "Installing Visual Studio Code"
		choco install winrar -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$onlyoffice.Add_Click( { 
		Write-Host "Installing OnlyOffice"
		choco install onlyoffice -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$androidstudio.Add_Click( { 
		Write-Host "Installing Android Studio"
		choco install androidstudio -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$battlenet.Add_Click( { 
		Write-Host "Installing Battle.net"
		choco install battle.net -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$unifiedremote.Add_Click( { 
		Write-Host "Installing Unified Remote"
		choco install unifiedremote -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})	

$geforcenow.Add_Click( { 
		Write-Host "Installing Nvidia GeforceNow"
		choco install nvidia-geforce-now -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})	

$intellij.Add_Click( { 
		Write-Host "Installing Intellij"
		choco install intellijidea-ultimate -y
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})
	
$powertoys.Add_Click( { 
	Write-Host "Installing Power Toys"
	choco install powertoys -y
	$wshell.Popup("Operation Completed", 0, "Done", 0x0)
})

$ungoogled.Add_Click( { 
	Write-Host "Installing Ungoogled Chromium"
	choco install ungoogled-chromium -y
	$wshell.Popup("Operation Completed", 0, "Done", 0x0)
})
	
$essentialtweaks.Add_Click( { 
		Write-Host "Creating Restore Point incase something bad happens"
		Enable-ComputerRestore -Drive "C:\"
		Checkpoint-Computer -Description "RestorePoint1" -RestorePointType "MODIFY_SETTINGS"

		Write-Host "Running O&O Shutup with Recommended Settings"
		Import-Module BitsTransfer
		Start-BitsTransfer -Source "https://raw.githubusercontent.com/ChrisTitusTech/win10script/master/ooshutup10.cfg" -Destination ooshutup10.cfg
		Start-BitsTransfer -Source "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -Destination OOSU10.exe
		./OOSU10.exe ooshutup10.cfg /quiet

		Write-Host "Disabling Telemetry..."
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
		Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" | Out-Null
		Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\ProgramDataUpdater" | Out-Null
		Disable-ScheduledTask -TaskName "Microsoft\Windows\Autochk\Proxy" | Out-Null
		Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" | Out-Null
		Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" | Out-Null
		Disable-ScheduledTask -TaskName "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" | Out-Null
		Write-Host "Disabling Application suggestions..."
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "ContentDeliveryAllowed" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "OemPreInstalledAppsEnabled" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEnabled" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEverEnabled" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 0
		If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
			New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Type DWord -Value 1
		Write-Host "Disabling Activity History..."
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -Type DWord -Value 0
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 0
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -Type DWord -Value 0
		Write-Host "Disabling Location Tracking..."
		If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
			New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Deny"
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
		Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0
		Write-Host "Disabling automatic Maps updates..."
		Set-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -Type DWord -Value 0
		Write-Host "Disabling Feedback..."
		If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules")) {
			New-Item -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Type DWord -Value 0
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Type DWord -Value 1
		Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClient" -ErrorAction SilentlyContinue | Out-Null
		Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" -ErrorAction SilentlyContinue | Out-Null
		Write-Host "Disabling Tailored Experiences..."
		If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
			New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 1
		Write-Host "Disabling Advertising ID..."
		If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo")) {
			New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 1
		Write-Host "Disabling Error reporting..."
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -Type DWord -Value 1
		Disable-ScheduledTask -TaskName "Microsoft\Windows\Windows Error Reporting\QueueReporting" | Out-Null
		Write-Host "Restricting Windows Update P2P only to local network..."
		If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
			New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 1
		Write-Host "Stopping and disabling Diagnostics Tracking Service..."
		Stop-Service "DiagTrack" -WarningAction SilentlyContinue
		Set-Service "DiagTrack" -StartupType Disabled
		Write-Host "Stopping and disabling WAP Push Service..."
		Stop-Service "dmwappushservice" -WarningAction SilentlyContinue
		Set-Service "dmwappushservice" -StartupType Disabled
		Write-Host "Enabling F8 boot menu options..."
		bcdedit /set `{current`} bootmenupolicy Legacy | Out-Null
		Write-Host "Stopping and disabling Home Groups services..."
		Stop-Service "HomeGroupListener" -WarningAction SilentlyContinue
		Set-Service "HomeGroupListener" -StartupType Disabled
		Stop-Service "HomeGroupProvider" -WarningAction SilentlyContinue
		Set-Service "HomeGroupProvider" -StartupType Disabled
		Write-Host "Disabling Shared Experiences..."
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableCdp" -Type DWord -Value 0
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableMmx" -Type DWord -Value 0
		Write-Host "Disabling Remote Assistance..."
		Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Type DWord -Value 0
		Write-Host "Disabling Storage Sense..."
		Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Recurse -ErrorAction SilentlyContinue
		Write-Host "Stopping and disabling Superfetch service..."
		Stop-Service "SysMain" -WarningAction SilentlyContinue
		Set-Service "SysMain" -StartupType Disabled
		Write-Host "Setting BIOS time to UTC..."
		Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal" -Type DWord -Value 1
		Write-Host "Disabling Hibernation..."
		Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernteEnabled" -Type Dword -Value 0
		If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
			New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type Dword -Value 0
		Write-Host "Showing task manager details..."
		$taskmgr = Start-Process -WindowStyle Hidden -FilePath taskmgr.exe -PassThru
		Do {
			Start-Sleep -Milliseconds 100
			$preferences = Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -ErrorAction SilentlyContinue
		} Until ($preferences)
		Stop-Process $taskmgr
		$preferences.Preferences[28] = 0
		Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -Type Binary -Value $preferences.Preferences
		Write-Host "Showing file operations details..."
		If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager")) {
			New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" | Out-Null
		}
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -Type DWord -Value 1
		Write-Host "Hiding Task View button..."
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 0
		Write-Host "Hiding People icon..."
		If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People")) {
			New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" | Out-Null
		}
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 0
		Write-Host "Showing all tray icons..."
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "EnableAutoTray" -Type DWord -Value 0
		Write-Host "Enabling NumLock after startup..."
		If (!(Test-Path "HKU:")) {
			New-PSDrive -Name HKU -PSProvider Registry -Root HKEY_USERS | Out-Null
		}
		Set-ItemProperty -Path "HKU:\.DEFAULT\Control Panel\Keyboard" -Name "InitialKeyboardIndicators" -Type DWord -Value 2147483650
		Add-Type -AssemblyName System.Windows.Forms
		If (!([System.Windows.Forms.Control]::IsKeyLocked('NumLock'))) {
			$wsh = New-Object -ComObject WScript.Shell
			$wsh.SendKeys('{NUMLOCK}')
		}

		Write-Host "Changing default Explorer view to This PC..."
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1
		Write-Host "Hiding 3D Objects icon from This PC..."
		Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Recurse -ErrorAction SilentlyContinue

		$Bloatware = @(

			#Unnecessary Windows 10 AppX Apps
			"Microsoft.3DBuilder"
			"Microsoft.AppConnector"
			"Microsoft.BingFinance"
			"Microsoft.BingNews"
			"Microsoft.BingSports"
			"Microsoft.BingTranslator"
			"Microsoft.BingWeather"
			"Microsoft.GetHelp"
			"Microsoft.Getstarted"
			"Microsoft.Messaging"
			"Microsoft.Microsoft3DViewer"
			"Microsoft.MicrosoftSolitaireCollection"
			"Microsoft.NetworkSpeedTest"
			"Microsoft.News"
			"Microsoft.Office.Lens"
			"Microsoft.Office.Sway"
			"Microsoft.OneConnect"
			"Microsoft.People"
			"Microsoft.Print3D"
			"Microsoft.SkypeApp"
			"Microsoft.StorePurchaseApp"
			"Microsoft.Wallet"
			"Microsoft.Whiteboard"
			"Microsoft.WindowsAlarms"
			"microsoft.windowscommunicationsapps"
			"Microsoft.WindowsFeedbackHub"
			"Microsoft.WindowsMaps"
			"Microsoft.WindowsSoundRecorder"
			"Microsoft.ZuneMusic"
			"Microsoft.ZuneVideo"

			#Sponsored Windows 10 AppX Apps
			#Add sponsored/featured apps to remove in the "*AppName*" format
			"*EclipseManager*"
			"*ActiproSoftwareLLC*"
			"*AdobeSystemsIncorporated.AdobePhotoshopExpress*"
			"*Duolingo-LearnLanguagesforFree*"
			"*PandoraMediaInc*"
			"*CandyCrush*"
			"*BubbleWitch3Saga*"
			"*Wunderlist*"
			"*Flipboard*"
			"*Twitter*"
			"*Facebook*"
			"*Royal Revolt*"
			"*Sway*"
			"*Speed Test*"
			"*Dolby*"
			"*Viber*"
			"*ACGMediaPlayer*"
			"*Netflix*"
			"*OneCalendar*"
			"*LinkedInforWindows*"
			"*HiddenCityMysteryofShadows*"
			"*Hulu*"
			"*HiddenCity*"
			"*AdobePhotoshopExpress*"
                     
			#Optional: Typically not removed but you can if you need to for some reason
			#"*Microsoft.Advertising.Xaml_10.1712.5.0_x64__8wekyb3d8bbwe*"
			#"*Microsoft.Advertising.Xaml_10.1712.5.0_x86__8wekyb3d8bbwe*"
			#"*Microsoft.BingWeather*"
			#"*Microsoft.MSPaint*"
			#"*Microsoft.MicrosoftStickyNotes*"
			#"*Microsoft.Windows.Photos*"
			#"*Microsoft.WindowsCalculator*"
			#"*Microsoft.WindowsStore*"
		)
		foreach ($Bloat in $Bloatware) {
			Get-AppxPackage -Name $Bloat | Remove-AppxPackage
			Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like $Bloat | Remove-AppxProvisionedPackage -Online
			Write-Host "Trying to remove $Bloat."
		}

		Write-Host "Installing Windows Media Player..."
		Enable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer" -NoRestart -WarningAction SilentlyContinue | Out-Null

		#Stops edge from taking over as the default .PDF viewer    
		Write-Host "Stopping Edge from taking over as the default .PDF viewer"
		$NoPDF = "HKCR:\.pdf"
		$NoProgids = "HKCR:\.pdf\OpenWithProgids"
		$NoWithList = "HKCR:\.pdf\OpenWithList" 
		If (!(Get-ItemProperty $NoPDF  NoOpenWith)) {
			New-ItemProperty $NoPDF NoOpenWith 
		}        
		If (!(Get-ItemProperty $NoPDF  NoStaticDefaultVerb)) {
			New-ItemProperty $NoPDF  NoStaticDefaultVerb 
		}        
		If (!(Get-ItemProperty $NoProgids  NoOpenWith)) {
			New-ItemProperty $NoProgids  NoOpenWith 
		}        
		If (!(Get-ItemProperty $NoProgids  NoStaticDefaultVerb)) {
			New-ItemProperty $NoProgids  NoStaticDefaultVerb 
		}        
		If (!(Get-ItemProperty $NoWithList  NoOpenWith)) {
			New-ItemProperty $NoWithList  NoOpenWith
		}        
		If (!(Get-ItemProperty $NoWithList  NoStaticDefaultVerb)) {
			New-ItemProperty $NoWithList  NoStaticDefaultVerb 
		}
            
		#Appends an underscore '_' to the Registry key for Edge
		$Edge = "HKCR:\AppXd4nrz8ff68srnhf9t5a8sbjyar1cr723_"
		If (Test-Path $Edge) {
			Set-Item $Edge AppXd4nrz8ff68srnhf9t5a8sbjyar1cr723_ 
		}
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$windowssearch.Add_Click( { 
		Write-Host "Disabling Bing Search in Start Menu..."
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "BingSearchEnabled" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "CortanaConsent" -Type DWord -Value 0
		If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
			New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "DisableWebSearch" -Type DWord -Value 1
		Write-Host "Stopping and disabling Windows Search indexing service..."
		Stop-Service "WSearch" -WarningAction SilentlyContinue
		Set-Service "WSearch" -StartupType Disabled
		Write-Host "Hiding Taskbar Search icon / box..."
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Type DWord -Value 0
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$backgroundapps.Add_Click( { 
		Write-Host "Disabling Background application access..."
		Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach {
			Set-ItemProperty -Path $_.PsPath -Name "Disabled" -Type DWord -Value 1
			Set-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -Type DWord -Value 1
		}
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$cortana.Add_Click( { 
		Write-Host "Disabling Cortana..."
		If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings")) {
			New-Item -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -Type DWord -Value 0
		If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization")) {
			New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitTextCollection" -Type DWord -Value 1
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitInkCollection" -Type DWord -Value 1
		If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore")) {
			New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Name "HarvestContacts" -Type DWord -Value 0
		If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
			New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Type DWord -Value 0
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$securitylow.Add_Click( { 
		Write-Host "Lowering UAC level..."
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Type DWord -Value 0
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "PromptOnSecureDesktop" -Type DWord -Value 0
		Write-Host "Disabling Windows Defender..."
		If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender")) {
			New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware" -Type DWord -Value 1
		If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
			Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "WindowsDefender" -ErrorAction SilentlyContinue
		}
		ElseIf ([System.Environment]::OSVersion.Version.Build -ge 15063) {
			Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "SecurityHealth" -ErrorAction SilentlyContinue
		}
		Write-Host "Disabling Windows Defender Cloud..."
		If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet")) {
			New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Name "SpynetReporting" -Type DWord -Value 0
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Name "SubmitSamplesConsent" -Type DWord -Value 2
		Write-Host "Disabling Meltdown (CVE-2017-5754) compatibility flag..."
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\QualityCompat" -Name "cadca5fe-87d3-4b96-b7fb-a231484277cc" -ErrorAction SilentlyContinue
		Write-Host "Disabling Malicious Software Removal Tool offering..."
		If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT")) {
			New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" -Name "DontOfferThroughWUAU" -Type DWord -Value 1
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$securityhigh.Add_Click( { 
		Write-Host "Raising UAC level..."
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Type DWord -Value 5
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "PromptOnSecureDesktop" -Type DWord -Value 1
		Write-Host "Disabling SMB 1.0 protocol..."
		Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
		Write-Host "Enabling Windows Defender..."
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware" -ErrorAction SilentlyContinue
		If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
			Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "WindowsDefender" -Type ExpandString -Value "`"%ProgramFiles%\Windows Defender\MSASCuiL.exe`""
		}
		ElseIf ([System.Environment]::OSVersion.Version.Build -ge 15063) {
			Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "SecurityHealth" -Type ExpandString -Value "`"%ProgramFiles%\Windows Defender\MSASCuiL.exe`""
		}
		Write-Host "Enabling Windows Defender Cloud..."
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Name "SpynetReporting" -ErrorAction SilentlyContinue
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Name "SubmitSamplesConsent" -ErrorAction SilentlyContinue
		Write-Host "Disabling Windows Script Host..."
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows Script Host\Settings" -Name "Enabled" -Type DWord -Value 0
		Write-Host "Enabling Meltdown (CVE-2017-5754) compatibility flag..."
		If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\QualityCompat")) {
			New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\QualityCompat" | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\QualityCompat" -Name "cadca5fe-87d3-4b96-b7fb-a231484277cc" -Type DWord -Value 0
		Write-Host "Enabling Malicious Software Removal Tool offering..."
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" -Name "DontOfferThroughWUAU" -ErrorAction SilentlyContinue
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$defaultwindowsupdate.Add_Click( { 
		Write-Host "Enabling driver offering through Windows Update..."
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -ErrorAction SilentlyContinue
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -ErrorAction SilentlyContinue
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -ErrorAction SilentlyContinue
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -ErrorAction SilentlyContinue
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -ErrorAction SilentlyContinue
		Write-Host "Enabling Windows Update automatic restart..."
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -ErrorAction SilentlyContinue
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -ErrorAction SilentlyContinue
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$securitywindowsupdate.Add_Click( { 
		Write-Host "Disabling driver offering through Windows Update..."
		If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata")) {
			New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1
		If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching")) {
			New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -Type DWord -Value 1
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -Type DWord -Value 1
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -Type DWord -Value 0
		If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate")) {
			New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -Type DWord -Value 1
		Write-Host "Disabling Windows Update automatic restart..."
		If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
			New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -Type DWord -Value 1
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -Type DWord -Value 0
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$actioncenter.Add_Click( { 
		Write-Host "Disabling Action Center..."
		If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
			New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
		}
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -Type DWord -Value 1
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" -Name "ToastEnabled" -Type DWord -Value 0
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$visualfx.Add_Click( { 
		Write-Host "Adjusting visual effects for performance..."
		Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 0
		Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 0
		Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](144, 18, 3, 128, 16, 0, 0, 0))
		Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 0
		Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 0
		Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
		Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 0
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$onedrive.Add_Click( { 
		Write-Host "Disabling OneDrive..."
		If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive")) {
			New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" | Out-Null
		}
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -Type DWord -Value 1
		Write-Host "Uninstalling OneDrive..."
		Stop-Process -Name "OneDrive" -ErrorAction SilentlyContinue
		Start-Sleep -s 2
		$onedrive = "$env:SYSTEMROOT\SysWOW64\OneDriveSetup.exe"
		If (!(Test-Path $onedrive)) {
			$onedrive = "$env:SYSTEMROOT\System32\OneDriveSetup.exe"
		}
		Start-Process $onedrive "/uninstall" -NoNewWindow -Wait
		Start-Sleep -s 2
		Stop-Process -Name "explorer" -ErrorAction SilentlyContinue
		Start-Sleep -s 2
		Remove-Item -Path "$env:USERPROFILE\OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
		Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
		Remove-Item -Path "$env:PROGRAMDATA\Microsoft OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
		Remove-Item -Path "$env:SYSTEMDRIVE\OneDriveTemp" -Force -Recurse -ErrorAction SilentlyContinue
		If (!(Test-Path "HKCR:")) {
			New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT | Out-Null
		}
		Remove-Item -Path "HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -ErrorAction SilentlyContinue
		Remove-Item -Path "HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -ErrorAction SilentlyContinue
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$darkmode.Add_Click( { 
		Write-Host "Enabling Dark Mode"
		Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$lightmode.Add_Click( { 
		Write-Host "Switching Back to Light Mode"
		Remove-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme
		$wshell.Popup("Operation Completed", 0, "Done", 0x0)
	})

$sophia.Add_Click( {
		$url = "https://github.com/farag2/Windows-10-Sophia-Script/releases/download/5.10.8/Sophia.Script.v5.10.8.zip"
		$output = "C:\Users\%DEFAULTUSERPROFILE%\Downloads\Sophia.v5.10.8.zip"
		$start_time = Get-Date
		Invoke-WebRequest -Uri $url -OutFile $output
                Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
	})


[void]$Form.ShowDialog()
