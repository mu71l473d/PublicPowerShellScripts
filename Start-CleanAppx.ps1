## Writes a verbose output to the screen for user information
    Write-Host "Retriving current disk percent free for comparison once the script has completed.                 " -NoNewline -ForegroundColor Green
    Write-Host "[DONE]" -ForegroundColor Green -BackgroundColor Black

    ## Gathers the amount of disk space used before running the script
    $Before = Get-WmiObject Win32_LogicalDisk | Where-Object { $_.DriveType -eq "3" } | Select-Object SystemName,
    @{ Name = "Drive" ; Expression = { ( $_.DeviceID ) } },
    @{ Name = "Size (GB)" ; Expression = {"{0:N1}" -f ( $_.Size / 1gb)}},
    @{ Name = "FreeSpace (GB)" ; Expression = {"{0:N1}" -f ( $_.Freespace / 1gb ) } },
    @{ Name = "PercentFree" ; Expression = {"{0:P1}" -f ( $_.FreeSpace / $_.Size ) } } |
        Format-Table -AutoSize |
        Out-String


## start cleaning the appxPackages
    Function Start-CleanAppx{
     Write-Host "Windows AppxPackage Cleanup is running.                                                                  " -NoNewline -ForegroundColor Green
    Try{

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

## Stop timer
    $Enders = (Get-Date)

    ## Calculate amount of seconds your code takes to complete.
    Write-Verbose "Elapsed Time: $(($Enders - $Starters).totalseconds) seconds
 ## Sends hostname to the console for ticketing purposes.
    Write-Host (Hostname) -ForegroundColor Green

    ## Sends the date and time to the console for ticketing purposes.
    Write-Host (Get-Date | Select-Object -ExpandProperty DateTime) -ForegroundColor Green

    ## Sends the disk usage before running the cleanup script to the console for ticketing purposes.
    Write-Verbose "
    Before: $Before"

    ## Sends the disk usage after running the cleanup script to the console for ticketing purposes.
    Write-Verbose "After: $After"
