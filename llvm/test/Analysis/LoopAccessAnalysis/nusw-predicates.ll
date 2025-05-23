; NOTE: Assertions have been autogenerated by utils/update_analyze_test_checks.py UTC_ARGS: --version 5
; RUN: opt -passes='print<access-info>' -disable-output %s 2>&1 | FileCheck %s

target datalayout = "p:16:16-p3:32:32"

define void @int_and_pointer_predicate(ptr %v, i32 %N) {
; CHECK-LABEL: 'int_and_pointer_predicate'
; CHECK-NEXT:    loop:
; CHECK-NEXT:      Report: unsafe dependent memory operations in loop. Use #pragma clang loop distribute(enable) to allow loop distribution to attempt to isolate the offending operations into a separate loop
; CHECK-NEXT:  Unknown data dependence.
; CHECK-NEXT:      Dependences:
; CHECK-NEXT:        Unknown:
; CHECK-NEXT:            store i16 0, ptr %gep.iv.i16, align 1 ->
; CHECK-NEXT:            store i16 0, ptr %v, align 1
; CHECK-EMPTY:
; CHECK-NEXT:      Run-time memory checks:
; CHECK-NEXT:      Grouped accesses:
; CHECK-NEXT:        Group [[GRP1:0x[0-9a-f]+]]:
; CHECK-NEXT:          (Low: %v High: (2 + %v))
; CHECK-NEXT:            Member: %v
; CHECK-NEXT:        Group [[GRP2:0x[0-9a-f]+]]:
; CHECK-NEXT:          (Low: %v High: (6 + (4 * (trunc i32 %N to i16)) + %v))
; CHECK-NEXT:            Member: {%v,+,4}<%loop>
; CHECK-EMPTY:
; CHECK-NEXT:      Non vectorizable stores to invariant address were not found in loop.
; CHECK-NEXT:      SCEV assumptions:
; CHECK-NEXT:      {0,+,1}<%loop> Added Flags: <nusw>
; CHECK-NEXT:      {%v,+,4}<%loop> Added Flags: <nusw>
; CHECK-EMPTY:
; CHECK-NEXT:      Expressions re-written:
;
entry:
  br label %loop

loop:
  %iv = phi i64 [ 0, %entry ], [ %iv.next, %loop ]
  %iv.i16 = trunc i64 %iv to i16
  %gep.iv.i16 = getelementptr { i16, i16 }, ptr %v, i16 %iv.i16
  store i16 0, ptr %gep.iv.i16, align 1
  store i16 0, ptr %v, align 1
  %iv.next = add i64 %iv, 1
  %iv.i32 = trunc i64 %iv to i32
  %.not = icmp ult i32 %N, %iv.i32
  br i1 %.not, label %exit, label %loop

exit:
  ret void
}

define void @int_and_multiple_pointer_predicates(ptr %v, ptr %w, i32 %N) {
; CHECK-LABEL: 'int_and_multiple_pointer_predicates'
; CHECK-NEXT:    loop:
; CHECK-NEXT:      Report: unsafe dependent memory operations in loop. Use #pragma clang loop distribute(enable) to allow loop distribution to attempt to isolate the offending operations into a separate loop
; CHECK-NEXT:  Unknown data dependence.
; CHECK-NEXT:      Dependences:
; CHECK-NEXT:        Unknown:
; CHECK-NEXT:            store i16 0, ptr %gep.v, align 1 ->
; CHECK-NEXT:            store i16 0, ptr %v, align 1
; CHECK-EMPTY:
; CHECK-NEXT:        Unknown:
; CHECK-NEXT:            store i16 0, ptr %gep.w, align 1 ->
; CHECK-NEXT:            store i16 0, ptr %w, align 1
; CHECK-EMPTY:
; CHECK-NEXT:      Run-time memory checks:
; CHECK-NEXT:      Check 0:
; CHECK-NEXT:        Comparing group ([[GRP3:0x[0-9a-f]+]]):
; CHECK-NEXT:        ptr %v
; CHECK-NEXT:        Against group ([[GRP4:0x[0-9a-f]+]]):
; CHECK-NEXT:        ptr %w
; CHECK-NEXT:      Check 1:
; CHECK-NEXT:        Comparing group ([[GRP3]]):
; CHECK-NEXT:        ptr %v
; CHECK-NEXT:        Against group ([[GRP5:0x[0-9a-f]+]]):
; CHECK-NEXT:          %gep.w = getelementptr { i16, i16 }, ptr %w, i16 %iv.i16
; CHECK-NEXT:      Check 2:
; CHECK-NEXT:        Comparing group ([[GRP6:0x[0-9a-f]+]]):
; CHECK-NEXT:          %gep.v = getelementptr { i16, i16 }, ptr %v, i16 %iv.i16
; CHECK-NEXT:        Against group ([[GRP4]]):
; CHECK-NEXT:        ptr %w
; CHECK-NEXT:      Check 3:
; CHECK-NEXT:        Comparing group ([[GRP6]]):
; CHECK-NEXT:          %gep.v = getelementptr { i16, i16 }, ptr %v, i16 %iv.i16
; CHECK-NEXT:        Against group ([[GRP5]]):
; CHECK-NEXT:          %gep.w = getelementptr { i16, i16 }, ptr %w, i16 %iv.i16
; CHECK-NEXT:      Grouped accesses:
; CHECK-NEXT:        Group [[GRP3]]:
; CHECK-NEXT:          (Low: %v High: (2 + %v))
; CHECK-NEXT:            Member: %v
; CHECK-NEXT:        Group [[GRP6]]:
; CHECK-NEXT:          (Low: %v High: (6 + (4 * (trunc i32 %N to i16)) + %v))
; CHECK-NEXT:            Member: {%v,+,4}<%loop>
; CHECK-NEXT:        Group [[GRP4]]:
; CHECK-NEXT:          (Low: %w High: (2 + %w))
; CHECK-NEXT:            Member: %w
; CHECK-NEXT:        Group [[GRP5]]:
; CHECK-NEXT:          (Low: %w High: (6 + (4 * (trunc i32 %N to i16)) + %w))
; CHECK-NEXT:            Member: {%w,+,4}<%loop>
; CHECK-EMPTY:
; CHECK-NEXT:      Non vectorizable stores to invariant address were not found in loop.
; CHECK-NEXT:      SCEV assumptions:
; CHECK-NEXT:      {0,+,1}<%loop> Added Flags: <nusw>
; CHECK-NEXT:      {%v,+,4}<%loop> Added Flags: <nusw>
; CHECK-NEXT:      {%w,+,4}<%loop> Added Flags: <nusw>
; CHECK-EMPTY:
; CHECK-NEXT:      Expressions re-written:
;
entry:
  br label %loop

loop:
  %iv = phi i64 [ 0, %entry ], [ %iv.next, %loop ]
  %iv.i16 = trunc i64 %iv to i16
  %gep.v = getelementptr { i16, i16 }, ptr %v, i16 %iv.i16
  store i16 0, ptr %gep.v, align 1
  store i16 0, ptr %v, align 1
  %gep.w = getelementptr { i16, i16 }, ptr %w, i16 %iv.i16
  store i16 0, ptr %gep.w, align 1
  store i16 0, ptr %w, align 1
  %iv.next = add i64 %iv, 1
  %iv.i32 = trunc i64 %iv to i32
  %.not = icmp ult i32 %N, %iv.i32
  br i1 %.not, label %exit, label %loop

exit:
  ret void
}

define void @pointers_to_different_aspace_predicates(ptr %v, ptr addrspace(3) %w, i32 %N) {
; CHECK-LABEL: 'pointers_to_different_aspace_predicates'
; CHECK-NEXT:    loop:
; CHECK-NEXT:      Report: cannot identify array bounds
; CHECK-NEXT:      Dependences:
; CHECK-NEXT:      Run-time memory checks:
; CHECK-NEXT:      Grouped accesses:
; CHECK-EMPTY:
; CHECK-NEXT:      Non vectorizable stores to invariant address were not found in loop.
; CHECK-NEXT:      SCEV assumptions:
; CHECK-NEXT:      {0,+,1}<%loop> Added Flags: <nusw>
; CHECK-NEXT:      {%v,+,4}<%loop> Added Flags: <nusw>
; CHECK-NEXT:      {%w,+,4}<%loop> Added Flags: <nusw>
; CHECK-EMPTY:
; CHECK-NEXT:      Expressions re-written:
;
entry:
   br label %loop

loop:
   %iv = phi i64 [ 0, %entry ], [ %iv.next, %loop ]
   %gep.v = getelementptr {i16, i16}, ptr %v, i64 %iv
   store i16 0, ptr %gep.v, align 1
   %gep.w = getelementptr i32, ptr addrspace(3) %w, i64 %iv
   store i32 0, ptr addrspace(3) %gep.w, align 1
   %iv.next = add i64 %iv, 1
   %iv.i32 = trunc i64 %iv to i32
   %.not = icmp ult i32 %N, %iv.i32
   br i1 %.not, label %exit, label %loop

 exit:
   ret void
 }
