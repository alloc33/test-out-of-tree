// src/lib.rs
#![no_std]

extern "C" {
    fn c_function_example();
}

#[no_mangle]
pub extern "C" fn rust_function_example() {
    unsafe {
        c_function_example();
    }
}

#[no_mangle]
pub extern "C" fn init_module() -> i32 {
    rust_function_example();
    0
}

#[no_mangle]
pub extern "C" fn cleanup_module() {
    // Cleanup code if needed
}
