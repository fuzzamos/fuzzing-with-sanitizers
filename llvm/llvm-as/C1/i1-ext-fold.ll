
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define signext i32 @foo(i32 signext %a, i32 signext %b) #0 {
entry:
  %cmp = icmp slt i32 %a, %b
  %conv = zext i1 %cmp to i32
  %shl = shl nuw nsw i32 %conv, 4
  ret i32 %shl







}


define signext i32 @foo2(i32 signext %a, i32 signext %b) #0 {
entry:
  %cmp = icmp slt i32 %a, %b
  %conv = zext i1 %cmp to i32
  %shl = shl nuw nsw i32 %conv, 4
  %add1 = or i32 %shl, 5
  ret i32 %add1







}


define signext i32 @foo3(i32 signext %a, i32 signext %b) #0 {
entry:
  %cmp = icmp sle i32 %a, %b
  %conv = zext i1 %cmp to i32
  %shl = shl nuw nsw i32 %conv, 4
  ret i32 %shl






}

attributes #0 = { nounwind readnone }

