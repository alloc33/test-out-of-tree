// build.rs
fn main() {
    cc::Build::new()
        .file("my_c_function.c")
        .compile("my_c_function");
}
