fn main() {
    let file_string = std::fs::read_to_string("/etc/fstab").unwrap();
    println!("{}", file_string);
}
