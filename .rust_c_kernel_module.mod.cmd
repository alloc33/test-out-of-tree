savedcmd_/root/test-out-of-tree/rust_c_kernel_module.mod := printf '%s\n'   src/lib.o my_c_function.o | awk '!x[$$0]++ { print("/root/test-out-of-tree/"$$0) }' > /root/test-out-of-tree/rust_c_kernel_module.mod
