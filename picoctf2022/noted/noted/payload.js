const form = new URLSearchParams({
    username: 'hoge',
    password: 'fuga'
  });
await fetch("http://localhost:8080/login", {
    method: "POST",
    credentials: "include",
    body: form,
  })
  .then((res) => {
  });
