; ModuleID = '/tmp/tmp.VXSIBowcTv/reduced.bc'
target datalayout = "e-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-n32:64-S32-G1-P4-A0"
target triple = "spirv64-amd-amdhsa"

define spir_kernel void @_Z17field_test_kernelPi() addrspace(4) {
entry:
  store i27136 1, ptr addrspace(4) null, align 8
  ret void
}
