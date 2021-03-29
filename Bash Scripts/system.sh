#!/bin/bash

#INSTRUCTIONS: Edit the following placeholder

#Prints the amount of free memory on the system and saves it to txt file
free -h > ~/backups/freemem/free_mem.txt

#Prints disk usage and save it to txt file
df -h > ~/backups/diskuse/disk_usage.txt

#Lists all open files and save it to txt file
lsof > ~/backups/openlist/open_list.txt

#File system disk space statistics
df -h > ~/backups/freedisk/free_disk.txt


