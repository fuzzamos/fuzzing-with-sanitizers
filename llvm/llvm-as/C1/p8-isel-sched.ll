
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define void @foo(i32* nocapture %r1, i32* nocapture %r2, i32* nocapture %r3, i32* nocapture %r4, i32 signext %a, i32 signext %b, i32 signext %c, i32 signext %d) #0 {
entry:
  %tobool = icmp ne i32 %a, 0
  %cond = select i1 %tobool, i32 %b, i32 %c
  store i32 %cond, i32* %r1, align 4
  %cond5 = select i1 %tobool, i32 %b, i32 %d
  store i32 %cond5, i32* %r2, align 4
  %add = add nsw i32 %b, 1
  %sub = add nsw i32 %d, -2
  %cond10 = select i1 %tobool, i32 %add, i32 %sub
  store i32 %cond10, i32* %r3, align 4
  %add13 = add nsw i32 %b, 3
  %sub15 = add nsw i32 %d, -5
  %cond17 = select i1 %tobool, i32 %add13, i32 %sub15
  store i32 %cond17, i32* %r4, align 4
  ret void
}









attributes #0 = { nounwind }

