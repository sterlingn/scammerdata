from email.message import EmailMessage
import ssl
import smtplib
NAME_NATE = "Nate"
EMAIL_NATE = "sendjunkthru@gmail.com"

email_sender = 'sendjunkthru@gmail.com'
email_password = 'vvdmqzhwudhyxclq'
email_receiver = EMAIL_NATE

subject = 'Secret Santa!!!'
fhand = open("For_"+NAME_NATE+".txt")
def file_reader(fhand):
    for line in fhand:
        line = line.rstrip()
        print(line) 
text=file_reader(fhand)
          
body = "'"+print(text)+"'"

em = EmailMessage()
em['From'] = email_sender
em['To'] = email_receiver
em['Subject'] = subject
em.set_content(body)

context = ssl.create_default_context()

with smtplib.SMTP_SSL('smtp.gmail.com', 465, context=context) as smtp:
    smtp.login(email_sender, email_password)
    smtp.sendmail(email_sender, email_receiver, em.as_string())
    