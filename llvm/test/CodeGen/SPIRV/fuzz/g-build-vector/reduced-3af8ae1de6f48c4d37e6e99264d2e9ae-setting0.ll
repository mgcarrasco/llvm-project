; ModuleID = '/tmp/tmp.6J8MR9sp35/reduced.bc'
; "LLVM ERROR: unable to legalize instruction: %120:vid(<32 x s8>) = G_BUILD_VECTOR %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8), %152:iid(s8) (in function: type_selection_kernel)",
target datalayout = "e-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-n32:64-S32-G1-P4-A0"
target triple = "spirv64-amd-amdhsa"

@__const.__assert_fail.fmt = addrspace(1) constant [47 x i8] c"%s:%u: %s: Device-side assertion `%s' failed.\0A\00"
@.str = addrspace(1) constant [5 x i8] c"long\00"
@.str.1 = addrspace(1) constant [4 x i8] c"int\00"
@.str.2 = addrspace(1) constant [10 x i8] c"long long\00"
@.str.3 = addrspace(1) constant [4 x i8] c"%s\0A\00"
@__hip_cuid_d3a47b8e824dc663 = addrspace(1) global i8 0
@llvm.embedded.module = external addrspace(1) constant [0 x i8]
@llvm.cmdline = addrspace(1) constant [2260 x i8] c"-cc1\00-fmessage-length=178\00-ferror-limit\0019\00-fcolor-diagnostics\00-mllvm\00-amdgpu-internalize-symbols\00-aux-triple\00x86_64-unknown-linux-gnu\00-disable-free\00-emit-llvm-bc\00-aux-target-cpu\00x86-64\00-triple\00spirv64-amd-amdhsa\00-resource-dir\00/COD/2025-11-28/trunk_22.0-0/lib/clang/22\00-iwithprefix\00/opt/rocm/include\00-isystem\00/COD/2025-11-28/trunk_22.0-0/lib/clang/22/include/cuda_wrappers\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/backward\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/backward\00-isystem\00/COD/2025-11-28/trunk_22.0-0/lib/clang/22/include\00-isystem\00/usr/local/include\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../x86_64-linux-gnu/include\00-internal-externc-isystem\00/usr/include/x86_64-linux-gnu\00-internal-externc-isystem\00/include\00-internal-externc-isystem\00/usr/include\00-internal-isystem\00/COD/2025-11-28/trunk_22.0-0/lib/clang/22/include\00-internal-isystem\00/usr/local/include\00-internal-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../x86_64-linux-gnu/include\00-internal-externc-isystem\00/usr/include/x86_64-linux-gnu\00-internal-externc-isystem\00/include\00-internal-externc-isystem\00/usr/include\00-std=gnu++17\00-cuid=10cd279744ba96ca\00-fhip-new-launch-api\00-fcxx-exceptions\00-fexceptions\00-fskip-odr-check-in-gmf\00-fno-threadsafe-statics\00-pic-level\002\00-fdeprecated-macro\00-fcuda-is-device\00-fgnuc-version=4.2.1\00-fconvergent-functions\00-ffp-contract=fast-honor-pragmas\00-fno-experimental-relative-c++-abi-vtables\00-fno-file-reproducible\00-O1\00-fno-autolink\00-fembed-bitcode=marker\00-fdebug-compilation-dir=/testing\00-fcoverage-compilation-dir=/testing\00-debugger-tuning=gdb\00-disable-llvm-passes\00-mconstructor-aliases\00-clear-ast-before-backend\00-emit-llvm-uselists\00-main-file-name\006b50d6cf763e27442bdd9bdeb323b4ae43f019a8afc2992e663bfcc13e8236d0.hip\00-mframe-pointer=all\00-finline-functions\00-fno-loop-interchange\00-fdiagnostics-hotness-threshold=0\00-fdiagnostics-misexpect-tolerance=0\00-include\00__clang_hip_runtime_wrapper.h\00"
@G = addrspace(1) global i32 1

define spir_func ptr addrspace(4) @_Z10selectTypel(i64 %0) addrspace(4) {
entry:
  %G = getelementptr ptr, ptr addrspace(4) null, i64 %0
  ret ptr addrspace(4) %G
}

define spir_kernel void @type_selection_kernel(i1 %0, ptr addrspace(4) %1, i1 %2, i64 %3, ptr addrspace(4) %4) addrspace(4) {
entry:
  %i = alloca i32, align 4
  %call = call spir_func addrspace(4) i32 null()
  %call1 = call spir_func addrspace(4) i32 null()
  store i32 0, ptr addrspace(4) null, align 4
  %5 = load i32, ptr addrspace(4) null, align 4
  %conv = sext i32 0 to i64
  %add2 = add i64 0, 44
  store i64 0, ptr addrspace(4) null, align 8
  %6 = load i64, ptr addrspace(4) null, align 8
  %call3 = call spir_func addrspace(4) ptr addrspace(4) @_Z10selectTypel(i64 0)
  store ptr addrspace(4) null, ptr addrspace(4) null, align 8
  %7 = load ptr addrspace(4), ptr addrspace(4) null, align 8
  %8 = call addrspace(4) i64 @__ockl_printf_begin(i64 0)
  %9 = getelementptr i8, ptr addrspace(4) %1, i64 1
  %10 = load i8, ptr addrspace(4) null, align 1
  %11 = add i64 0, 0
  %B = srem <32 x i8> splat (i8 127), splat (i8 1)
  store <32 x i8> %B, ptr null, align 32
  ret void
}

declare i64 @__ockl_printf_begin(i64) addrspace(4)
