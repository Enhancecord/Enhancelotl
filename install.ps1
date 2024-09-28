$link = "https://github.com/Enhancecord/Enhancelotl/releases/latest/download/EnhancelotlCli.exe"

$outfile = "$env:TEMP\EnhancelotlCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
