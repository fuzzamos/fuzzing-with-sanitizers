

target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define void @_Z8example3iPiS_() #0 {
entry:
  br i1 undef, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 
  br i1 undef, label %while.end, label %while.body

while.body:                                       
  br i1 false, label %while.end, label %while.body, !llvm.loop.vectorize.already_vectorized !0

while.end:                                        
  ret void






}

attributes #0 = { noinline nounwind }

!0 = !{}

