const fs = require('fs').promises;


async function main() {
  const path = 'index.html';
  fs.readFile(path, { encoding: 'utf-8' })
    .then((data) => {
      const re = /\(split(\*\d)?.* == '(.*)'/g;

      let m;
      let a = Array(8);
      a[0] = 'pico';
      while (null != (m = re.exec(data))) {
        let d, part;
        if (typeof m[1] === 'undefined') {
          d = 1;
        } else {
          d = parseInt(m[1][1]);
        }
        part = m[2];
        a[d] = part;
      }
      console.log(a.join(''));
    });
}


main();
