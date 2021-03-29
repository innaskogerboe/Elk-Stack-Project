#!/bin/bash


output=$HOME/research/sys_info.txt

if {! -d $HOME/research]
then
mkdir $HOME/research
fi


echo "sys_info Scripts" && date >> $output

echo ""

echo -e  "MACHINE INFO:$MACHTYPE \n" >> $output

echo -e "IP INFO: $(ip addr | head -9| tail -1) \n" >> $output

echo -e "HostName: $(hostname -s) \n" >> $output

echo "DNS Info: $(cat /etc/resolv.conf |tail -2)" >> $output



