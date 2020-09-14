const express = require('express');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.urlencoded({
  extended: true
}));

app.get('/', (req, res) => {
  res.send('hello world\n');
});

const escape_string = unsafe => JSON.stringify(unsafe).slice(1, -1).replace(/</g, '\\x3C').replace(/>/g, '\\x3E');

app.post('/', (req, res) => {
  const content = req.body.content;
  const safe_content = escape_string(content);
  console.log(content);
  console.log(JSON.stringify(content));
  console.log(safe_content);
  res.send('hello post\n');
});

const PORT = 8888;
app.listen(PORT, () => {
  console.log('Running server');
});

