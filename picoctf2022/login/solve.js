async function main() {
  let user_b64 = 'YWRtaW4';
  let pass_b64 = 'cGljb0NURns1M3J2M3JfNTNydjNyXzUzcnYzcl81M3J2M3JfNTNydjNyfQ';

  user_b64 += '='.repeat(user_b64.length % 4);
  pass_b64 += '='.repeat(pass_b64.length % 4);

  console.log(Buffer.from(user_b64, 'base64').toString());
  console.log(Buffer.from(pass_b64, 'base64').toString());
}


main();


// picoCTF{53rv3r_53rv3r_53rv3r_53rv3r_53rv3r}
