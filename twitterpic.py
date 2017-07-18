from twython import Twython
APP_KEY = '####',
APP_SECRET = '####',
OAUTH_TOKEN = '####',
OAUTH_TOKEN_SECRET = '####'
twitter = Twython(APP_KEY, APP_SECRET,
                  OAUTH_TOKEN, OAUTH_TOKEN_SECRET)
photo = open('C:\Python27/bk.jpg', 'rb')
response = twitter.upload_media(media=photo)
twitter.update_status(status='Checkout this cool image!', media_id=response)

