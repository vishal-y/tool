#!/bin/bash


clear


read -p "do you want to add extra keys (y/n) : " key

if [[ $key = "y" ]]
then 
     mkdir $HOME/.termux/ ;echo "extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1
fi


clear

echo "enter tool number "
echo
select tool in zphisher metasploit more 
do
   if [[ $tool = zphisher ]]
then
   echo
   read -p  ">>  do you want to install zphihser (y/n) : " ans 
  if [[ $ans = "y" ]]
then
    clear
   echo " zphihser "
    echo " downloading dependencies.... "
  pkg install php -y
  pkg install wget -y
  pkg install curl -y
 git clone git://github.com/htr-tech/zphisher.git

ls
cd zphisher
ls
chmod +x *

exit

 else
     continue
fi

elif [[ $tool = "metasploit" ]]
then
   echo
   read -p  ">>  do you want to install metasploit (y/n) : " anss
  if [[ $anss = "y" ]]
then
  echo "metasplit" 

apt update 

 apt upgrade

 pkg upgrade -y

 pkg install wget curl openssh git -y

 apt install ncurses-utils

 wget https://raw.githubusercontent.com/gushmazuko/metasploit_in_termux/master/metasploit.sh
chmod +x * metasploit.sh

exit

else
  continue
fi

elif [[ $tool = "more" ]]
then
  echo "more tools coming soon "
else
  continue
fi #first if else
done
