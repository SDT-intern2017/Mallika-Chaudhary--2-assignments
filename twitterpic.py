from twython import Twython
APP_KEY = 'dEcgoDLoQ8v3i6plFhYJNoiEH',
APP_SECRET = 'QLoUSXysbfCx2vadPtwH6UhIWVJGY44JGHUzKpEuLn7XXr73Nz',
OAUTH_TOKEN = '69550955-Qo7IT6TTYF4SP2Pi2PXlNrPyiLbprGcevicMi07ga',
OAUTH_TOKEN_SECRET = 'q1R0RGWecWUcqdbgizcqBQutF4c1FEW3K3saerMs8KReC'
twitter = Twython(APP_KEY, APP_SECRET,
                  OAUTH_TOKEN, OAUTH_TOKEN_SECRET)
photo = open('C:\Python27/bk.jpg', 'rb')
response = twitter.upload_media(media=photo)
twitter.update_status(status='Checkout this cool image!', media_id=response)

