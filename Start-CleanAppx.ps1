## start cleaning the appxPackages
    Function Start-CleanAppx{
     Write-Host "Windows AppxPackage Cleanup is running.                                                                  " -NoNewline -ForegroundColor Green
    Try{
<#    
Get-AppxPackage *Microsoft.3dbuilder* | Remove-AppxPackage
Get-AppxPackage *AdobeSystemsIncorporated.AdobePhotoshopExpress* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Asphalt8Airborne* | Remove-AppxPackage
Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage
Get-AppxPackage *king.com.CandyCrushSodaSaga* | Remove-AppxPackage
Get-AppxPackage *Microsoft.DrawboardPDF* | Remove-AppxPackage
Get-AppxPackage *Facebook* | Remove-AppxPackage
Get-AppxPackage *BethesdaSoftworks.FalloutShelter* | Remove-AppxPackage
Get-AppxPackage *FarmVille2CountryEscape* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage
Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Wallet* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage
Get-AppxPackage *Todos* | Remove-AppxPackage
Get-AppxPackage *ConnectivityStore* | Remove-AppxPackage
Get-AppxPackage *MinecraftUWP* | Remove-AppxPackage
Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage
Get-AppxPackage *Microsoft.BingFinance* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage
Get-AppxPackage *Microsoft.BingNews* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage
Get-AppxPackage *Netflix* | Remove-AppxPackage
Get-AppxPackage *OneNote* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage
Get-AppxPackage *PandoraMediaInc* | Remove-AppxPackage
Get-AppxPackage *Microsoft.People* | Remove-AppxPackage
Get-AppxPackage *CommsPhone* | Remove-AppxPackage
Get-AppxPackage *windowsphone* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage
Get-AppxPackage *flaregamesGmbH.RoyalRevolt2* | Remove-AppxPackage
Get-AppxPackage *WindowsScan* | Remove-AppxPackage
Get-AppxPackage *AutodeskSketchBook* | Remove-AppxPackage
Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage
Get-AppxPackage *bingsports* | Remove-AppxPackage
Get-AppxPackage *Office.Sway* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage
Get-AppxPackage *Twitter* | Remove-AppxPackage
Get-AppxPackage *Microsoft3DViewer* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage
Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage
Get-AppxPackage *XboxOneSmartGlass* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxIdentityProvider* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxGameOverlay* | Remove-AppxPackage
#>


# New method that should be implemented
$AppList = @(
"*Microsoft.3dbuilder* | Remove-AppxPackage",
"*AdobeSystemsIncorporated.AdobePhotoshopExpress*",
"*Microsoft.WindowsAlarms*",
"*Microsoft.Asphalt8Airborne*",
"*microsoft.windowscommunicationsapps*",
"*Microsoft.WindowsCamera*",
"*king.com.CandyCrushSodaSaga*",
"*Microsoft.DrawboardPDF*",
"*Facebook*",
"*BethesdaSoftworks.FalloutShelter*",
"*FarmVille2CountryEscape*",
"*Microsoft.WindowsFeedbackHub*",
"*Microsoft.GetHelp*",
"*Microsoft.Getstarted*",
"*Microsoft.ZuneMusic*",
"*Microsoft.WindowsMaps*",
"*Microsoft.Messaging*",
"*Microsoft.Wallet*",
"*Microsoft.MicrosoftSolitaireCollection*",
"*Todos*",
"*ConnectivityStore*",
"*MinecraftUWP*",
"*Microsoft.OneConnect*",
"*Microsoft.BingFinance*",
"*Microsoft.ZuneVideo*",
"*Microsoft.BingNews*",
"*Microsoft.MicrosoftOfficeHub*",
"*Netflix*",
"*OneNote*",
"*Microsoft.MSPaint*",
"*PandoraMediaInc*",
"*Microsoft.People*",
"*CommsPhone*",
"*windowsphone*",
"*Microsoft.Print3D*",
"*flaregamesGmbH.RoyalRevolt2*",
"*WindowsScan*",
"*AutodeskSketchBook*",
"*Microsoft.SkypeApp*",
"*bingsports*",
"*Office.Sway*",
"*Microsoft.Getstarted*",
"*Twitter*",
"*Microsoft3DViewer*",
"*Microsoft.WindowsSoundRecorder*",
"*Microsoft.BingWeather*",
"*Microsoft.XboxApp*",
"*XboxOneSmartGlass*",
"*Microsoft.XboxSpeechToTextOverlay*",
"*Microsoft.XboxIdentityProvider*",
"*Microsoft.XboxGameOverlay*"
)

foreach ($App in $AppList) {
    Get-AppxPackage -Name $App | Remove-AppxPackage -allusers -ErrorAction SilentlyContinue
}


  } Catch [System.Exception]{
      Write-host "Some apps could not be uninstalled" -ForegroundColor Red -NoNewline
      Write-host "[ERROR]" -ForegroundColor Red -BackgroundColor black
  }

} Start-CleanAppx 
