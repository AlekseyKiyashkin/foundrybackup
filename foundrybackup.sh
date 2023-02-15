#!/bin/bash

#set variables

FoundryHomeDir="/home/kroot/foundry/"
FoundryDataDir="/home/kroot/foundryuserdata/"
BackupsDir="var/backups/foundry"
LogFileName="$BackupsDir/backup_$(date +"%d_%m_%Y").log"
ExclusionsFileName="home/kroot/exclusions.txt"

#backup foundry home
tar --exclude-from="$ExclusionsFileName" -zcvf $BackupsDir/foundryhome$(date +"%d_%m_%Y").tar.gz $FoundryHomeDir >> $LogFileName

#backup foundry userdata
tar --exclude-from="$ExclusionsFileName" -zcvf $BackupsDir/foundryuserdata$(date +"%d_%m_%Y").tar.gz $FoundryHomeDir >> $LogFileName
