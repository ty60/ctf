const fs = require('fs')
const md5 = require('md5');

const puppeteer = require('puppeteer');
const Redis = require('ioredis');
const connection = new Redis(6379, 'redis');

const flag = fs.readFileSync("/flag", 'utf8');
      
// constants
const browser_option = {
    executablePath: 'google-chrome-unstable',
    headless: true,
    args: [
        '--no-sandbox',
        '--disable-background-networking',
        '--disk-cache-dir=/dev/null',
        '--disable-default-apps',
        '--disable-extensions',
        '--disable-gpu',
        '--disable-sync',
        '--disable-translate',
        '--hide-scrollbars',
        '--metrics-recording-only',
        '--mute-audio',
        '--no-first-run',
        '--safebrowsing-disable-auto-update',
    ],
};

let browser = undefined;

// utils
const crawl = async (url) => {
    console.log(`[*] started: ${url}`)
    
    const page = await browser.newPage();
    try {
        await page.goto(url, {
            waitUntil: 'networkidle0',
            timeout: 60 * 1000,
        });
        await page.goto(url + '/crawled', {
            waitUntil: 'networkidle0',
        });
    } catch (err){
        console.log(err);
    }
    await page.close();    
    console.log(`[*] finished: ${url}`)
};

const init = async () => {
    const browser = await puppeteer.launch(browser_option);
    const page = await browser.newPage();    
    try {
        await page.goto(`http://challenge:8000/login`);
        await page.waitFor('#username');
        await page.type('#username', flag);
        await page.waitFor('#password');
        await page.type('#password', flag);
        await page.waitFor('#formButton-login');
        await Promise.all([
            page.$eval('#formButton-login', elem => elem.click()),
            page.waitForNavigation()
        ]);
        const body = await page.evaluate(() => document.body.innerHTML);
        if (!body.includes('action="/post"')){
            throw Error(`login failed at ${page.url()}.`);
        }
    } catch (err) {
        console.log(`error occured at initialization:`);
        console.log(err);
        const body = await page.evaluate(() => document.body.innerHTML);
        console.log(`body: ${body}`);
    }
    try{ 
        await page.close();
    } catch (err) {
        // console.log(err)
    }
    return browser;
};

// handle the whole
function handle(){
    console.log("[*] waiting new query ...")
    connection.blpop("query", 0, async function(err, message) {
        const url = message[1];
        if (browser === undefined)
            browser = await init();
        await crawl(url);      
        setTimeout(handle, 10);
    });
}
handle();
