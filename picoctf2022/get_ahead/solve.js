const axios = require('axios').default;


axios
  .head('http://mercury.picoctf.net:15931/index.php')
  .then((res) => {
    console.log(res.headers.flag);
  });
// picoCTF{r3j3ct_th3_du4l1ty_82880908}
