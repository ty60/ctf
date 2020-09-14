const fs = require('fs');
const ZwspSteg = require('zwsp-steg');


const index = fs.readFileSync('./steg.txt', 'utf-8');
const decoded = ZwspSteg.decode(index, ZwspSteg.MODE_FULL);
console.log(decoded);
