















target datalayout = "e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx"

@d = common global i32 0, align 4
@a = common global i32 0, align 4
@c = common global i32 0, align 4
@b = common global i32 0, align 4











define void @foo() {
entry:
  br label %for.cond

for.cond:                                         
  %storemerge = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %f.0 = phi i32 [ undef, %entry ], [ %f.1, %for.inc7 ]
  store i32 %storemerge, i32* @d, align 4
  %cmp = icmp slt i32 %storemerge, 1
  br i1 %cmp, label %for.cond1, label %for.end9

for.cond1:                                        
  %storemerge1 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ]
  %f.1 = phi i32 [ %xor, %for.body3 ], [ %f.0, %for.cond ]
  store i32 %storemerge1, i32* @a, align 4
  %cmp2 = icmp slt i32 %storemerge1, 1
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        
  %0 = load i32, i32* @c, align 4
  %cmp4 = icmp sge i32 %storemerge1, %0
  %conv = zext i1 %cmp4 to i32
  %1 = load i32, i32* @d, align 4
  %add = add nsw i32 %conv, %1
  %sext = shl i32 %add, 16
  %conv6 = ashr exact i32 %sext, 16
  %xor = xor i32 %conv6, 1
  %inc = add nsw i32 %storemerge1, 1
  br label %for.cond1

for.inc7:                                         
  %2 = load i32, i32* @d, align 4
  %inc8 = add nsw i32 %2, 1
  br label %for.cond

for.end9:                                         
  %cmp10 = icmp sgt i32 %f.0, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          
  store i32 0, i32* @b, align 4
  br label %if.end

if.end:                                           
  ret void
}
