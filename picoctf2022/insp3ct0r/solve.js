const axios = require('axios');


async function main() {
  const base_url = 'https://jupiter.challenges.picoctf.org/problem/41511/';
  Promise.all([
    axios.get(base_url),
    axios.get(base_url + 'mycss.css'),
    axios.get(base_url + 'myjs.js'),
  ])
    .then((responses) => {
      const particles = responses.map((res) => {
        const re = /flag: ([^\s]*)/;
        const match = re.exec(res.data);
        return match[1];
      });
      console.log(particles.join(''));
    });
}

main().catch((err) => { console.log(err) });

// picoCTF{tru3_d3t3ct1ve_0r_ju5t_lucky?832b0699}
