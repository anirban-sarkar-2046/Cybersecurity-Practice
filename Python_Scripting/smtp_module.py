import smtplib

smtpObj = smtplib.SMTP('smtp.gmail.com', 587)
smtpObj.ehlo()
smtpObj.starttls()
smtpObj.login('araftasfir@gmail.com', 'CADET2046SARKAR')
smtpObj.sendmail("araftasfir@gmail.com", "anirbansarkar2046@gmail.com", 'Subject: SMTP check. \n This is a test email')
smtpObj.quit()

