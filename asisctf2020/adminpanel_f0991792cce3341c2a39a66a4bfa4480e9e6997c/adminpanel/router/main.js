module.exports = function(app, db, fs){
    app.get('/', function(req, res){
        res.render('index.html')
    });

    app.post('/login', function(req, res){
        var user = {};
        var tmp = req.body;
        var row;

        if(typeof tmp.pw !== "undefined"){
            tmp.pw = tmp.pw.replace(/\\/gi,'').replace(/\'/gi,'').replace(/-/gi,'').replace(/#/gi,'');
        }

      // Prototype pollution here
      // user['__proto__'] = {'pw': sqlpayload}
        for(var key in tmp){
            user[key] = tmp[key];
        }

        if(req.connection.remoteAddress !== '::ffff:127.0.0.1' && tmp.id === 'admin' || typeof user.id === "undefined"){
            user.id = 'guest';
        }
        req.session.user = user.id;

        if(typeof user.pw !== "undefined"){
          // sqli here
          // construct quine sql to make (row.pw === user.pw) true
          //   var sql = `select pw from users where id='admin' and pw='${user.pw}'`;
          // console.log(sql);
          // console.log('');
            row = db.prepare(`select pw from users where id='admin' and pw='${user.pw}'`).get();
          //   console.log(`user.pw: ${user.pw}`);
          //   console.log(`row.pw:  ${row.pw}`);
          console.log(req.session.id);
            if(typeof row !== "undefined"){
                req.session.isAdmin = (row.pw === user.pw);
            }else{
                req.session.isAdmin = false;
            }
            if(req.session.isAdmin && req.session.user === 'admin'){
                res.statusCode = 302;
                res.setHeader('Location','admin');
                res.end();
            }else{
                res.end("Access Denied!");
            }
        }else{
            res.end("No password given.");
        }
    });

    app.get('/admin', function(req, res){
        if(typeof req.session.isAdmin !== "undefined" && req.session.isAdmin && req.session.user === 'admin'){
          console.log('admin');
          console.log(req.query.test);
            if(typeof req.query.test !== "undefined"){
                res.render(req.query.test);
            }else{
                res.render("admin.html");
            }
        }else{
            res.end("Access Denied!");
        }
    });

    app.post('/upload', function(req, res){
      console.log('hoge');
        if(typeof req.session.isAdmin !== "undefined" && req.session.isAdmin && req.session.user === 'admin'){
          console.log('upload');
          console.log(req.body.name);
            if(typeof req.body.name !== "undefined" && typeof req.body.file !== "undefined"){
                var fname = req.body.name;
                var dir = './views/upload/'+req.session.id;
                var contents = req.body.file;

                !fs.existsSync(dir) && fs.mkdirSync(dir);
                fs.writeFileSync(dir+'/'+fname, contents);
                res.end("Done.");
            }else{
                res.end("Something's wrong");
            }
        }else{
            res.end("Permission Denied!");
        }
    });
}
// ASIS{t1me_t0_study_pr0t0type_p0llu7ion_4nd_ejs!}
