fn main() {
    const B: &[u8; 5] = include_bytes!("hoge");
    const v: () = if B[0] != b'f' { panic!("ng") };
}
