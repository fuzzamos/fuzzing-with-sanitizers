






target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

define i32 @f(i8* %p) nounwind {
entry:
  %0 = load i8, i8* %p
  %conv = sext i8 %0 to i32
  ret i32 %conv
}

define i64 @g(i32 %i) nounwind {








































entry:
  br label %if.then

if.then:
  %0 = alloca i8, i32 %i
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 %i, i32 1, i1 false)
  %call = call i32 @f(i8* %0)
  %conv = sext i32 %call to i64
  ret i64 %conv
}

declare void @llvm.memset.p0i8.i32(i8*, i8, i32, i32, i1) nounwind
