

target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-bgq-linux"


define void @test_qpx() unnamed_addr #0 align 2 {
entry:
  %0 = load i32, i32* undef, align 4
  %1 = trunc i32 %0 to i8
  call void @llvm.memset.p0i8.i64(i8* null, i8 %1, i64 64, i32 32, i1 false)
  ret void









}


declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1


define void @test_vsx() unnamed_addr #2 align 2 {
entry:
  %0 = load i32, i32* undef, align 4
  %1 = trunc i32 %0 to i8
  call void @llvm.memset.p0i8.i64(i8* null, i8 %1, i64 32, i32 1, i1 false)
  ret void









}

attributes #0 = { nounwind "target-cpu"="a2q" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "target-cpu"="pwr7" }

