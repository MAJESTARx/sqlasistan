#!/bin/bash
#!/bin/sh
#Created By MAJESTAR	
if [ "$EUID" -ne 0 ] 
  then 
  clear
 echo -e "\033[32;5m
 Lütfen  Sudo Kullanıcı olarak çalıştırın \033[0m"
  sleep 1
 echo -e "\033[1;31m  Şunu Yazın  : sudo bash gereksinimler.sh \033[4;34m"
  exit
fi 
chmod 777 sqlasistan
cp sqlasistan /bin 
ls /bin | grep sqlmap >> /dev/null 
if [ "$?" != 0 ];then
apt-get install sqlmap
fi 
ls /usr/share/figlet | grep Bloody >> /dev/null
if [ "$?" != 0 ];then
apt-get install figlet -y 
git clone https://github.com/xero/figlet-fonts
cd figlet-fonts
sudo chmod 777 * 
mv * /usr/share/figlet
cd .. 
rm -rf figlet-fonts
fi
ls /usr/games | grep lolcat >> /dev/null
if [ "$?" != 0 ];then
sudo apt-get install lolcat -y
bash sqlasistan
fi
echo""
echo""

echo "KURULUM BİTTİ TERMİNALE ( sqlasistan ) yazarak programı çalıştırabilirsiniz "

