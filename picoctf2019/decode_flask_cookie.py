import sys
import json
import zlib
import base64
from itsdangerous import base64_decode

if len(sys.argv) > 1:
    session_cookie = sys.argv[1]
else:
    session_cookie = '.eJwlz8FqAzEMBNB_8TkHry1Lcn5mkeQRDYEWdpNT6b93S8_DPGa-y54Hzo9yfx1v3Mr-WOVepAWxtSpt0pyiJB6hju6B5THmZqEjZRn8Co2SI9WGJ5Yao7PUZArnYTT6Sk3SbSDruECwscmfBreYdaWTTKkupuhorZZbifPI_fX1xOe1J9rWERRL-NJGB3cbOnzWusgWrLIqgKv3PnH8n9i0_PwC3QNBWQ.D9on4A.vgIFNrFUmauk5TXjUZlUwt8syj4'

encoded = session_cookie[1:].split('.')[0]
encoded += '=' * (4 - (len(encoded) % 4))
decoded = base64.urlsafe_b64decode(encoded)
decompressed = zlib.decompress(decoded)
print(json.loads(decompressed.decode('utf-8')))
