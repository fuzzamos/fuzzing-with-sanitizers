

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx"

@n = global i32 10000, align 4
@double_array = common global [10000 x double] zeroinitializer, align 16
@unsigned_array = common global [10000 x i32] zeroinitializer, align 16





define void @convert() {
entry:
  %0 = load i32, i32* @n, align 4
  %cmp4 = icmp eq i32 %0, 0
  br i1 %cmp4, label %for.end, label %for.body.preheader

for.body.preheader:                               
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds [10000 x double], [10000 x double]* @double_array, i64 0, i64 %indvars.iv
  %1 = load double, double* %arrayidx, align 8
  %conv = fptoui double %1 to i32
  %arrayidx2 = getelementptr inbounds [10000 x i32], [10000 x i32]* @unsigned_array, i64 0, i64 %indvars.iv
  store i32 %conv, i32* %arrayidx2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp ult i32 %2, %0
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 
  br label %for.end

for.end:                                          
  ret void
}
