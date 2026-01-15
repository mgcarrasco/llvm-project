; ModuleID = '/tmp/tmp.zaEqws2Iat/reduced.bc'
;"LLVM ERROR: unable to translate instruction: call llvm.spv.const.composite.i32 (in function: __cxa_pure_virtual)",
target datalayout = "e-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-n32:64-S32-G1-P4-A0"
target triple = "spirv64-amd-amdhsa"

@test.managed = addrspace(1) global { { ptr addrspace(4), [16 x i8] } } { { ptr addrspace(4), [16 x i8] } { ptr addrspace(4) null, [16 x i8] undef } }

define spir_func void @__cxa_pure_virtual() addrspace(4) {
entry:
  unreachable
}
