

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"

@A = common global [1024 x float] zeroinitializer, align 16
@B = common global [1024 x float] zeroinitializer, align 16





define void @hoist_cond_load() {
entry:
  br label %for.body
for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end9 ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @A, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds [1024 x float], [1024 x float]* @B, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx2, align 4
  %cmp3 = fcmp oeq float %0, 0.000000e+00
  br i1 %cmp3, label %if.end9, label %if.else

if.else:
  %1 = load float, float* %arrayidx, align 4
  br label %if.end9

if.end9:
  %tmp.0 = phi float [ %1, %if.else ], [ 0.000000e+00, %for.body ]
  store float %tmp.0, float* %arrayidx, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp ne i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.body, label %for.end

for.end:
  ret void
}






define void @dont_hoist_cond_load() {
entry:
  br label %for.body
for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end9 ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @A, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds [1024 x float], [1024 x float]* @B, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx2, align 4
  %cmp3 = fcmp oeq float %0, 0.000000e+00
  br i1 %cmp3, label %if.end9, label %if.else

if.else:
  %1 = load float, float* %arrayidx, align 4
  br label %if.end9

if.end9:
  %tmp.0 = phi float [ %1, %if.else ], [ 0.000000e+00, %for.body ]
  store float %tmp.0, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp ne i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.body, label %for.end

for.end:
  ret void
}
