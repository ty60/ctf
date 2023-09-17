fn main() {
    use std::fs;
    let mut n = String::new();
    let entries = fs::read_dir("src").unwrap().into_iter().map(|e|{
        let t = e.as_ref().unwrap().file_name().into_string().unwrap();
        println!("t:{}",t);
        if t.ends_with(".rs"){n=t}
    }).next();

    println!("n:{}",n);
}

/* SECCON{jkljkljkl} */
