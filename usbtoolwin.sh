#!/usr/bin/env bash
clear
echo "
██╗   ██╗███████╗██████╗           
██║   ██║██╔════╝██╔══██╗          
██║   ██║███████╗██████╔╝          
██║   ██║╚════██║██╔══██╗          
╚██████╔╝███████║██████╔╝          
 ╚═════╝ ╚══════╝╚═════╝           
████████╗ ██████╗  ██████╗ ██╗     
╚══██╔══╝██╔═══██╗██╔═══██╗██║     
   ██║   ██║   ██║██║   ██║██║     
   ██║   ██║   ██║██║   ██║██║     
   ██║   ╚██████╔╝╚██████╔╝███████╗
   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
                                   "
echo "Windows - Version 1.2.2"
echo ""
echo "Put the iso location here"
read iso
cat /proc/partitions
echo "What drive to you want to write to? (WILL DESTROY ALL DATA)"
echo "UNDER THE COLUMN 'name', NOT THE WINDOWS NAME"
read disk
sudo umount $disk
sudo dd if=$iso of=/dev/$disk bs=4M status=progress oflag=sync
