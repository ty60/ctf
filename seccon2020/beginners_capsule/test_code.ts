import * as fs from 'fs';
// @ts-ignore
import {enableSeccompFilter} from './lib.js';

class Flag {
  #flag: string;
  constructor(flag: string) {
    this.#flag = flag;
  }
}

const flag = new Flag(fs.readFileSync('flag.txt').toString());
fs.unlinkSync('flag.txt');

enableSeccompFilter();


eval("console.log(_flag.get(flag));");

// SECCON{Player_WorldOfFantasy_StereoWorXxX_CapsLock_WaveRunner}

