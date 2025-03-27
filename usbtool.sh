#!/bin/bash
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
echo "USB Tool, Write iso to usb drive."
echo ""
echo "Put the iso location here"
read iso
sudo lsblk
echo "What drive to you want to write to (WILL DESTROY ALL DATA)"
read disk
sudo umount $disk
sudo dd if=$iso of=$disk bs=4M status=progress oflag=sync
sudo eject $disk