savedcmd_/root/test-out-of-tree/src/lib.o := RUST_MODFILE=/root/test-out-of-tree/rust_c_kernel_module rustc --edition=2021 -Zbinary_dep_depinfo=y -Dunsafe_op_in_unsafe_fn -Drust_2018_idioms -Dunreachable_pub -Dnon_ascii_idents -Wmissing_docs -Drustdoc::missing_crate_level_docs -Dclippy::correctness -Dclippy::style -Dclippy::suspicious -Dclippy::complexity -Dclippy::perf -Dclippy::let_unit_value -Dclippy::mut_mut -Dclippy::needless_bitwise_bool -Dclippy::needless_continue -Dclippy::no_mangle_with_rust_abi -Wclippy::dbg_macro -Cpanic=abort -Cembed-bitcode=n -Clto=n -Cforce-unwind-tables=n -Ccodegen-units=1 -Csymbol-mangling-version=v0 -Crelocation-model=static -Zfunction-sections=n -Dclippy::float_arithmetic --target=aarch64-unknown-none -Ctarget-feature="-neon" -Zbranch-protection=pac-ret -Copt-level=2 -Cdebug-assertions=y -Coverflow-checks=y -Cforce-frame-pointers=y -Cdebuginfo=2  --cfg MODULE  @./include/generated/rustc_cfg -Zallow-features=new_uninit,offset_of -Zcrate-attr=no_std -Zcrate-attr='feature(new_uninit,offset_of)' -Zunstable-options --extern force:alloc --extern kernel --crate-type rlib -L ./rust/ --crate-name lib --sysroot=/dev/null --out-dir /root/test-out-of-tree/src/ --emit=dep-info=/root/test-out-of-tree/src/.lib.o.d --emit=obj=/root/test-out-of-tree/src/lib.o /root/test-out-of-tree/src/lib.rs

source_/root/test-out-of-tree/src/lib.o := /root/test-out-of-tree/src/lib.rs

deps_/root/test-out-of-tree/src/lib.o := \
  /root/rust-for-linux/rust/libcore.rmeta \
  /root/rust-for-linux/rust/libcompiler_builtins.rmeta \
  /root/rust-for-linux/rust/liballoc.rmeta \

/root/test-out-of-tree/src/lib.o: $(deps_/root/test-out-of-tree/src/lib.o)

$(deps_/root/test-out-of-tree/src/lib.o):
