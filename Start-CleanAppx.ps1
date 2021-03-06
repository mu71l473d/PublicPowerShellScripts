Function Start-CleanAppx{

Write-Host "Windows AppxPackage Cleanup is running." -NoNewline -ForegroundColor Green

$AppList = @("*Microsoft.3dbuilder*",
"*AdobeSystemsIncorporated.AdobePhotoshopExpress*",
"*Microsoft.WindowsAlarms*",
"*Microsoft.Asphalt8Airborne*",
"*microsoft.windowscommunicationsapps*",
"*Microsoft.WindowsCamera*",
"*CandyCrush*",
"*Microsoft.DrawboardPDF*",
"*Facebook*",
"Microsoft.MicrosoftStickyNotes*",
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
"*Plex*",
"*SpotifyMusic*", 
"*Disney*",
"*BubbleWitch3Saga*",
"*Fitbit*",
"*DolbyAccess*",
"*ThumbmunkeysLtd.PhototasticCollage*",
"*Microsoft.Windows.Cortana*",
"*MarchofEmpires*",
"*Microsoft.XboxGaming*") | foreach {Get-AppxPackage -allusers $_ | Remove-AppxPackage }

}Start-CleanAppx 
