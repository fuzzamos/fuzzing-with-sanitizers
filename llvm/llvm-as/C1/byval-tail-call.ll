





target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-linux-gnu"

declare void @ext(i32*)

define void @bar(i32* byval %x) {
  call void @ext(i32* %x)
  ret void
}

define void @foo(i32* %x) {



  call void @bar(i32* byval %x)
  ret void
}

define internal void @qux(i32* byval %x) {
  call void @ext(i32* %x)
  tail call void @ext(i32* null)
  ret void
}

define void @frob(i32* %x) {







  tail call void @qux(i32* byval %x)
  ret void
}
