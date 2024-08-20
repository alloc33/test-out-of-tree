ifneq ($(KERNELRELEASE),)
CC := clang
LLVM := 1

# Remove unsupported flags when using clang
CFLAGS_REMOVE_my_c_function.o := -fsanitize=bounds-strict -fconserve-stack -fsanitize

obj-m := rust_c_kernel_module.o
rust_c_kernel_module-objs := src/lib.o my_c_function.o module_license.o

else
KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules LLVM=1

rust-analyzer:
	$(MAKE) -C $(KDIR) rust-analyzer
	$(Q) ./scripts/generate_rust_analyzer.py $(KDIR) src/lib.rs > rust-project.json

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean LLVM=1

endif
