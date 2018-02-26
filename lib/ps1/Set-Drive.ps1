Get-Disk |
Where-Object { $_.Size -ge "100GB" } |
Initialize-Disk -PartitionStyle MBR -PassThru |
New-Partition -AssignDriveLetter -DriveLetter D -UseMaximumSize |
Format-Volume -FileSystem NTFS -NewFileSystemLabel "Games" -Confirm:$false
return "ok"