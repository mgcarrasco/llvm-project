; ModuleID = '/tmp/tmp.Jnst84n2Ux/reduced.bc'
; Assertion `CB && CB->getIntrinsicID() == Intrinsic::spv_extractv && "Unexpected argument of aggregate type, should be spv_extractv!"' failed.
target datalayout = "e-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-n32:64-S32-G1-P4-A0"
target triple = "spirv64-amd-amdhsa"

define spir_kernel void @_Z11test_kernelv() addrspace(4) {
entry:
  %cond = select i1 false, { i64, i64 } zeroinitializer, { i64, i64 } zeroinitializer
  store { i64, i64 } %cond, ptr addrspace(4) null, align 8
  ret void
}
