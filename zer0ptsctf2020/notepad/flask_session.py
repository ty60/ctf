#!/usr/bin/env python
from flask.sessions import SecureCookieSessionInterface
from itsdangerous import URLSafeTimedSerializer

class SimpleSecureCookieSessionInterface(SecureCookieSessionInterface):
    def get_signing_serializer(self, secret_key):
            if not secret_key:
                    return None
            signer_kwargs = dict(
                    key_derivation=self.key_derivation,
                    digest_method=self.digest_method
            )
            return URLSafeTimedSerializer(secret_key, salt=self.salt,
                                          serializer=self.serializer,
                                          signer_kwargs=signer_kwargs)


def decodeFlaskCookie(secret_key, cookieValue):
    sscsi = SimpleSecureCookieSessionInterface()
    signingSerializer = sscsi.get_signing_serializer(secret_key)
    return signingSerializer.loads(cookieValue)


def encodeFlaskCookie(secret_key, cookieDict):
    sscsi = SimpleSecureCookieSessionInterface()
    signingSerializer = sscsi.get_signing_serializer(secret_key)
    return signingSerializer.dumps(cookieDict).encode()
