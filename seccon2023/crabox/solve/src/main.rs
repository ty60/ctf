fn main() {
    const B: &[u8; 576] = include_bytes!(file!());
    const v: () = if B[547] != b'S' { panic!("ng") };
}

// const b: &[u8; 343] = include_bytes!(file!());
fn abc() {
    /* SECCO{hoge} */
}
