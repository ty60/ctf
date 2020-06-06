import jwt


with open("publickey.pem", "r") as f:
    PUBLIC_KEY = f.read()
with open("admin_cookie") as f:
    auth = f.read()
# is_admin = jwt.decode(auth, PUBLIC_KEY)["auth"] == "admin"
admin = jwt.decode(auth, PUBLIC_KEY)["auth"]
print(admin)
