Start-Transcript -Path "C:\temp\updates.log"

cup all -y
Update-Module
Update-Help -Ea 0

Stop-Transcript