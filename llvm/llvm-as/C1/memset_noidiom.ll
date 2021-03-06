
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.0.0"



define i8* @memset(i8* %b, i32 %c, i64 %len) nounwind uwtable ssp {
entry:
  %cmp1 = icmp ult i64 0, %len
  br i1 %cmp1, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   
  %conv6 = trunc i32 %c to i8
  br label %for.body

for.body:                                         
  %indvar = phi i64 [ 0, %for.body.lr.ph ], [ %indvar.next, %for.body ]
  %p.02 = getelementptr i8, i8* %b, i64 %indvar
  store i8 %conv6, i8* %p.02, align 1
  %indvar.next = add i64 %indvar, 1
  %exitcond = icmp ne i64 %indvar.next, %len
  br i1 %exitcond, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       
  br label %for.end

for.end:                                          
  ret i8* %b
}

