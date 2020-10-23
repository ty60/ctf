const fs = require('fs');
const {enableSeccompFilter} = require('./lib.js');

class Flag {
  #flag;
  constructor(flag) {
    this.#flag = flag;
  }
}

const flag = new Flag(fs.readFileSync('flag.txt').toString());
fs.unlinkSync('flag.txt');

enableSeccompFilter();

