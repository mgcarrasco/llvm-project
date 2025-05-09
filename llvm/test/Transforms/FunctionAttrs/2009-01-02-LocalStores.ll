; RUN: opt < %s -passes=function-attrs -S | FileCheck %s

; CHECK: define ptr @a(ptr readonly captures(none) %p)
define ptr @a(ptr %p) {
	%tmp = load ptr, ptr %p
	ret ptr %tmp
}

; CHECK: define ptr @b(ptr %q)
define ptr @b(ptr %q) {
	%mem = alloca ptr
	store ptr %q, ptr %mem
	%tmp = call ptr @a(ptr %mem)
	ret ptr %tmp
}

; CHECK: define ptr @c(ptr readnone returned captures(address_is_null, ret: address, provenance) %r)
@g = global i32 0
define ptr @c(ptr %r) {
	%a = icmp eq ptr %r, null
	store i32 1, ptr @g
	ret ptr %r
}
