




target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"

define i32 @sum(i32* %arr, i32 %n) nounwind {
entry:
  %precond = icmp slt i32 0, %n
  br i1 %precond, label %ph, label %return

ph:
  br label %loop












loop:
  %i.02 = phi i32 [ 0, %ph ], [ %iinc, %loop ]
  %s.01 = phi i32 [ 0, %ph ], [ %sinc, %loop ]
  %ofs = sext i32 %i.02 to i64
  %adr = getelementptr inbounds i32, i32* %arr, i64 %ofs
  %val = load i32, i32* %adr
  %sinc = add nsw i32 %s.01, %val
  %iinc = add nsw i32 %i.02, 1
  %cond = icmp slt i32 %iinc, %n
  br i1 %cond, label %loop, label %exit

exit:
  %s.lcssa = phi i32 [ %sinc, %loop ]
  br label %return

return:
  %s.0.lcssa = phi i32 [ %s.lcssa, %exit ], [ 0, %entry ]
  ret i32 %s.0.lcssa
}

define i64 @suml(i32* %arr, i32 %n) nounwind {
entry:
  %precond = icmp slt i32 0, %n
  br i1 %precond, label %ph, label %return

ph:
  br label %loop














loop:
  %i.02 = phi i32 [ 0, %ph ], [ %iinc, %loop ]
  %s.01 = phi i64 [ 0, %ph ], [ %sinc, %loop ]
  %ofs = sext i32 %i.02 to i64
  %adr = getelementptr inbounds i32, i32* %arr, i64 %ofs
  %val = load i32, i32* %adr
  %vall = sext i32 %val to i64
  %sinc = add nsw i64 %s.01, %vall
  %iinc = add nsw i32 %i.02, 1
  %cond = icmp slt i32 %iinc, %n
  br i1 %cond, label %loop, label %exit

exit:
  %s.lcssa = phi i64 [ %sinc, %loop ]
  br label %return

return:
  %s.0.lcssa = phi i64 [ %s.lcssa, %exit ], [ 0, %entry ]
  ret i64 %s.0.lcssa
}

define void @outofbounds(i32* %first, i32* %last, i32 %idx) nounwind {
  %precond = icmp ne i32* %first, %last
  br i1 %precond, label %ph, label %return




ph:
  br label %loop














loop:
  %ptriv = phi i32* [ %first, %ph ], [ %ptrpost, %loop ]
  %ofs = sext i32 %idx to i64
  %adr = getelementptr inbounds i32, i32* %ptriv, i64 %ofs
  store i32 3, i32* %adr
  %ptrpost = getelementptr inbounds i32, i32* %ptriv, i32 1
  %cond = icmp ne i32* %ptrpost, %last
  br i1 %cond, label %loop, label %exit

exit:
  br label %return

return:
  ret void
}

%structI = type { i32 }

define void @bitcastiv(i32 %start, i32 %limit, i32 %step, %structI* %base)
nounwind
{
entry:
  br label %loop








loop:
  %iv = phi i32 [%start, %entry], [%next, %loop]
  %p = phi %structI* [%base, %entry], [%pinc, %loop]
  %adr = getelementptr %structI, %structI* %p, i32 0, i32 0
  store i32 3, i32* %adr
  %pp = bitcast %structI* %p to i32*
  store i32 4, i32* %pp
  %pinc = getelementptr %structI, %structI* %p, i32 1
  %next = add i32 %iv, 1
  %cond = icmp ne i32 %next, %limit
  br i1 %cond, label %loop, label %exit

exit:
  ret void
}

define void @maxvisitor(i32 %limit, i32* %base) nounwind {
entry:
 br label %loop







loop:
  %idx = phi i32 [ 0, %entry ], [ %idx.next, %loop.inc ]
  %max = phi i32 [ 0, %entry ], [ %max.next, %loop.inc ]
  %idxprom = sext i32 %idx to i64
  %adr = getelementptr inbounds i32, i32* %base, i64 %idxprom
  %val = load i32, i32* %adr
  %cmp19 = icmp sgt i32 %val, %max
  br i1 %cmp19, label %if.then, label %if.else

if.then:
  br label %loop.inc

if.else:
  br label %loop.inc

loop.inc:
  %max.next = phi i32 [ %idx, %if.then ], [ %max, %if.else ]
  %idx.next = add nsw i32 %idx, 1
  %cmp = icmp slt i32 %idx.next, %limit
  br i1 %cmp, label %loop, label %exit

exit:
  ret void
}

define void @identityphi(i32 %limit) nounwind {
entry:
  br label %loop







loop:
  %iv = phi i32 [ 0, %entry], [ %iv.next, %control ]
  br i1 undef, label %if.then, label %control

if.then:
  br label %control

control:
  %iv.next = phi i32 [ %iv, %loop ], [ undef, %if.then ]
  %cmp = icmp slt i32 %iv.next, %limit
  br i1 %cmp, label %loop, label %exit

exit:
  ret void
}

define i64 @cloneOr(i32 %limit, i64* %base) nounwind {
entry:
  
  %halfLim = ashr i32 %limit, 2
  br label %loop














loop:
  %iv = phi i32 [ 0, %entry], [ %iv.next, %loop ]
  %t1 = sext i32 %iv to i64
  %adr = getelementptr i64, i64* %base, i64 %t1
  %val = load i64, i64* %adr
  %t2 = or i32 %iv, 1
  %t3 = sext i32 %t2 to i64
  %iv.next = add i32 %iv, 2
  %cmp = icmp slt i32 %iv.next, %halfLim
  br i1 %cmp, label %loop, label %exit

exit:
  %result = and i64 %val, %t3
  ret i64 %result
}



define i32 @indirectRecurrence() nounwind {
entry:
  br label %loop





loop:
  %j.0 = phi i32 [ 1, %entry ], [ %j.next, %cond_true ]
  %i.0 = phi i32 [ 0, %entry ], [ %j.0, %cond_true ]
  %tmp = icmp ne i32 %j.0, 10
  br i1 %tmp, label %cond_true, label %return

cond_true:
  %j.next = add i32 %j.0, 1
  br label %loop

return:
  ret i32 %i.0
}























define i32 @isomorphic(i32 %init, i32 %step, i32 %lim) nounwind {
entry:
  %step1 = add i32 %step, 1
  %init1 = add i32 %init, %step1
  %l.0 = sub i32 %init1, %step1
  br label %loop

loop:
  %ii = phi i32 [ %init1, %entry ], [ %ii.next, %loop ]
  %i = phi i32 [ %init, %entry ], [ %ii, %loop ]
  %j = phi i32 [ %init, %entry ], [ %j.next, %loop ]
  %k = phi i32 [ %init1, %entry ], [ %k.next, %loop ]
  %l = phi i32 [ %l.0, %entry ], [ %l.next, %loop ]
  %ii.next = add i32 %ii, %step1
  %j.next = add i32 %j, %step1
  %k.next = add i32 %k, %step1
  %l.step = add i32 %l, %step
  %l.next = add i32 %l.step, 1
  %cmp = icmp ne i32 %ii.next, %lim
  br i1 %cmp, label %loop, label %return

return:
  %sum1 = add i32 %i, %j.next
  %sum2 = add i32 %sum1, %k.next
  %sum3 = add i32 %sum1, %l.step
  %sum4 = add i32 %sum1, %l.next
  ret i32 %sum4
}



%structIF = type { i32, float }

define void @congruentgepiv(%structIF* %base) nounwind uwtable ssp {
entry:
  %first = getelementptr inbounds %structIF, %structIF* %base, i64 0, i32 0
  br label %loop







loop:
  %ptr.iv = phi %structIF* [ %ptr.inc, %latch ], [ %base, %entry ]
  %next = phi i32* [ %next.inc, %latch ], [ %first, %entry ]
  store i32 4, i32* %next
  br i1 undef, label %latch, label %exit

latch:                         
  %ptr.inc = getelementptr inbounds %structIF, %structIF* %ptr.iv, i64 1
  %next.inc = getelementptr inbounds %structIF, %structIF* %ptr.inc, i64 0, i32 0
  br label %loop

exit:
  ret void
}










define void @phiUsesTrunc() nounwind {
entry:
  br i1 undef, label %for.body, label %for.end

for.body:
  %iv = phi i32 [ %inc, %for.inc ], [ 1, %entry ]
  br i1 undef, label %if.then, label %if.else

if.then:
  br i1 undef, label %if.then33, label %for.inc

if.then33:
  br label %for.inc

if.else:
  br i1 undef, label %if.then97, label %for.inc

if.then97:
  %idxprom100 = sext i32 %iv to i64
  br label %for.inc

for.inc:
  %kmin.1 = phi i32 [ %iv, %if.then33 ], [ 0, %if.then ], [ %iv, %if.then97 ], [ 0, %if.else ]
  %inc = add nsw i32 %iv, 1
  br i1 undef, label %for.body, label %for.end

for.end:
  ret void
}
