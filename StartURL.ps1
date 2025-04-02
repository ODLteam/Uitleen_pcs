# Language
Set-Culture -CultureInfo "nl-NL"
Set-WinUILanguageOverride -Language "nl-NL"
# Regional settings
Set-WinHomeLocation -GeoID 227
# Keyboard
Set-WinDefaultInputMethodOverride "0413:00000413"
# Waiting for 30 secs
For ($i = 30; $i -ge 0; $i--) {
  Write-Host "Shutdown computer in $i seconds ..."
  Start-Sleep -Seconds 1
}

Start-OSDCloud -ZTI -OSName 'Windows 11 24H2 x64' -OSLanguage nl-nl -OSEdition Enterprise -OSActivation Volume

# Waiting for shutdown
For ($i = 30; $i -ge 0; $i--) {
  Write-Host "Shutdown computer in $i seconds ..."
  Start-Sleep -Seconds 1
}

# Shutdown computer after OSDCloud
wpeutil shutdown
