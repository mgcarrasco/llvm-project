; ModuleID = '/tmp/tmp.07TzR2cRo3/reduced.bc'
; "LLVM ERROR: unable to legalize instruction: %80:vid(<32 x s1>) = G_ICMP intpred(ugt), %75:vid(<32 x s1>), %78:vid (in function: _ZN24__hip_builtin_blockIdx_t7__get_xEv)"
target datalayout = "e-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-n32:64-S32-G1-P4-A0"
target triple = "spirv64-amd-amdhsa"

@__const.__assert_fail.fmt = addrspace(1) constant [47 x i8] c"%s:%u: %s: Device-side assertion `%s' failed.\0A\00"
@.str = addrspace(1) constant [5 x i8] c"long\00"
@.str.1 = addrspace(1) constant [4 x i8] c"int\00"
@.str.2 = addrspace(1) constant [10 x i8] c"long long\00"
@.str.3 = addrspace(1) constant [4 x i8] c"%s\0A\00"
@__hip_cuid_d3a47b8e824dc663 = external addrspace(1) global i8
@llvm.embedded.module = external addrspace(1) constant [0 x i8]
@llvm.cmdline = addrspace(1) constant [2260 x i8] c"-cc1\00-fmessage-length=178\00-ferror-limit\0019\00-fcolor-diagnostics\00-mllvm\00-amdgpu-internalize-symbols\00-aux-triple\00x86_64-unknown-linux-gnu\00-disable-free\00-emit-llvm-bc\00-aux-target-cpu\00x86-64\00-triple\00spirv64-amd-amdhsa\00-resource-dir\00/COD/2025-11-28/trunk_22.0-0/lib/clang/22\00-iwithprefix\00/opt/rocm/include\00-isystem\00/COD/2025-11-28/trunk_22.0-0/lib/clang/22/include/cuda_wrappers\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/backward\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/backward\00-isystem\00/COD/2025-11-28/trunk_22.0-0/lib/clang/22/include\00-isystem\00/usr/local/include\00-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../x86_64-linux-gnu/include\00-internal-externc-isystem\00/usr/include/x86_64-linux-gnu\00-internal-externc-isystem\00/include\00-internal-externc-isystem\00/usr/include\00-internal-isystem\00/COD/2025-11-28/trunk_22.0-0/lib/clang/22/include\00-internal-isystem\00/usr/local/include\00-internal-isystem\00/usr/lib/gcc/x86_64-linux-gnu/13/../../../../x86_64-linux-gnu/include\00-internal-externc-isystem\00/usr/include/x86_64-linux-gnu\00-internal-externc-isystem\00/include\00-internal-externc-isystem\00/usr/include\00-std=gnu++17\00-cuid=10cd279744ba96ca\00-fhip-new-launch-api\00-fcxx-exceptions\00-fexceptions\00-fskip-odr-check-in-gmf\00-fno-threadsafe-statics\00-pic-level\002\00-fdeprecated-macro\00-fcuda-is-device\00-fgnuc-version=4.2.1\00-fconvergent-functions\00-ffp-contract=fast-honor-pragmas\00-fno-experimental-relative-c++-abi-vtables\00-fno-file-reproducible\00-O1\00-fno-autolink\00-fembed-bitcode=marker\00-fdebug-compilation-dir=/testing\00-fcoverage-compilation-dir=/testing\00-debugger-tuning=gdb\00-disable-llvm-passes\00-mconstructor-aliases\00-clear-ast-before-backend\00-emit-llvm-uselists\00-main-file-name\006b50d6cf763e27442bdd9bdeb323b4ae43f019a8afc2992e663bfcc13e8236d0.hip\00-mframe-pointer=all\00-finline-functions\00-fno-loop-interchange\00-fdiagnostics-hotness-threshold=0\00-fdiagnostics-misexpect-tolerance=0\00-include\00__clang_hip_runtime_wrapper.h\00"

define spir_func i32 @_ZN24__hip_builtin_blockIdx_t7__get_xEv() addrspace(4) {
entry:
  %C = icmp ugt <32 x i1> splat (i1 true), zeroinitializer
  store <32 x i1> %C, ptr null, align 4
  ret i32 0
}
