Start-OSDCloud -ZTI -OSName 'Windows 11 24H2 x64' -OSLanguage nl-nl -OSEdition Enterprise -OSActivation Volume

# Waiting for shutdonw
For ($i = 30; $i -ge 0; $i--) {
  Write-Host "Shutdown computer in $i seconds ..."
  Start-Sleep -Seconds 1
}

# Shutdown computer after OSDCloud
wpeutil shutdown
