


@str = private unnamed_addr constant [28 x i8] c"xxxxxxxxxxxxxxxxxxxxxxxxxxx\00", align 1

define void @t(i32 %count) ssp nounwind {
entry:



  %tmp0 = alloca [60 x i8], align 1
  %tmp1 = getelementptr inbounds [60 x i8], [60 x i8]* %tmp0, i64 0, i64 0
  br label %bb1

bb1:



  %tmp2 = phi i32 [ %tmp3, %bb1 ], [ 0, %entry ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @str, i64 0, i64 0), i64 28, i32 1, i1 false)
  %tmp3 = add i32 %tmp2, 1
  %tmp4 = icmp eq i32 %tmp3, %count
  br i1 %tmp4, label %bb2, label %bb1

bb2:
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind
