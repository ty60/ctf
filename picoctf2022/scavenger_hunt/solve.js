const axios = require('axios');


async function main() {
  const base_url = 'http://mercury.picoctf.net:27393/'
  const responses = await Promise.all([
    axios.get(base_url),
    axios.get(base_url + 'mycss.css'),
    axios.get(base_url + 'robots.txt'),
    axios.get(base_url + '.htaccess'),
    axios.get(base_url + '.DS_Store'),
  ]);

  const re = /(flag: |part \d: )([^\s]*)/i;
  const frags = responses.map((res) => {
    const match = re.exec(res.data);
    return match[2];
  });
  console.log(frags.join(''));
}

main();

// picoCTF{th4ts_4_l0t_0f_pl4c3s_2_lO0k_d375c750}
