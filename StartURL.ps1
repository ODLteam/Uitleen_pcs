# OSDCloud Params
$OSName = 'Windows 11 24H2 x64'
$OSEdition = 'Enterprise'
$OSActivation = 'Volume'
$OSLanguage = 'nl-nl'

# OSDCloud Vars
$Global:MyOSDCloud = [ordered]@{
  ClearDiskConfirm = [bool]$false
  Debug = [bool]$true
  Restart = [bool]$false
  SplashScreen = [bool]$true
  BuildName = [string]'VDAB CC Uitleentoestel'
}

#Launch OSDCloud
Write-Host "Starting OSDCloud" -ForegroundColor Green
Write-Host "Start-OSDCloud -OSName $OSName -OSEdition $OSEdition -OSActivation $OSActivation -OSLanguage $OSLanguage"
Start-OSDCloud -OSName $OSName -OSEdition $OSEdition -OSActivation $OSActivation -OSLanguage $OSLanguage

# Waiting for shutdown
For ($i = 30; $i -ge 0; $i--) {
  Write-Host "Shutdown computer in $i seconds ..."
  Start-Sleep -Seconds 1
}

# Shutdown computer after OSDCloud
wpeutil shutdown
