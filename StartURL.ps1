$WindowsVersion = '24H2 x64'
# OSDCloud Params
$Params = @{
  OSVersion = "Windows 11"
  OSBuild = "$WindowsVersion"
  OSEdition = "Enterprise"
  OSLanguage = "nl-nl"
  OSActivation = "Volume"
}
# OSDCloud Vars
$Global:MyOSDCloud = [ordered]@{
  ClearDiskConfirm = [bool]$false
  Debug = [bool]$true
  Restart = [bool]$false
  SplashScreen = [bool]$true
  BuildName = [string]'VDAB CC Uitleentoestel'
}
Start-OSDCloud @Params

# Waiting for shutdown
For ($i = 30; $i -ge 0; $i--) {
  Write-Host "Shutdown computer in $i seconds ..."
  Start-Sleep -Seconds 1
}

# Shutdown computer after OSDCloud
wpeutil shutdown
