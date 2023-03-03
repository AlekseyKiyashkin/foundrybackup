#!/bin/bash

#set variables

FoundryHomeDir=""
FoundryDataDir=""
BackupsDir=""
LogFileName="$BackupsDir/backup_$(date +"%d_%m_%Y").log"
ExclusionsFileName="exclusions.txt"


#backup foundry home
tar --exclude-from="$ExclusionsFileName" -zcvf $BackupsDir/foundryhome$(date +"%d_%m_%Y").tar.gz $FoundryHomeDir > $LogFileName


#backup foundry userdata
tar --exclude-from="$ExclusionsFileName" -zcvf $BackupsDir/foundryuserdata$(date +"%d_%m_%Y").tar.gz $FoundryDataDir >> $LogFileName