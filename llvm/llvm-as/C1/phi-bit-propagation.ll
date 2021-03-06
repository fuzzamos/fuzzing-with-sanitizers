

%"class.std::bitset" = type { [8 x i8] }

define zeroext i1 @_Z3fooPjmS_mRSt6bitsetILm32EE(i32* nocapture %a, i64 %asize, i32* nocapture %b, i64 %bsize, %"class.std::bitset"* %bits) nounwind readonly ssp noredzone {
entry:
  %tmp.i.i.i.i = bitcast %"class.std::bitset"* %bits to i64*
  br label %for.cond

for.cond:                                         
  %0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %conv = zext i32 %0 to i64
  %cmp = icmp eq i64 %conv, %bsize
  br i1 %cmp, label %return, label %for.body

for.body:                                         
  %arrayidx = getelementptr inbounds i32, i32* %b, i64 %conv
  %tmp5 = load i32, i32* %arrayidx, align 4
  %conv6 = zext i32 %tmp5 to i64
  %rem.i.i.i.i = and i64 %conv6, 63
  %tmp3.i = load i64, i64* %tmp.i.i.i.i, align 8
  %shl.i.i = shl i64 1, %rem.i.i.i.i
  %and.i = and i64 %shl.i.i, %tmp3.i
  %cmp.i = icmp eq i64 %and.i, 0
  br i1 %cmp.i, label %for.inc, label %return

for.inc:                                          
  %inc = add i32 %0, 1
  br label %for.cond

return:                                           

  %retval.0 = phi i1 [ true, %for.body ], [ false, %for.cond ]
  ret i1 %retval.0
}


define void @func_37() noreturn nounwind ssp {
entry:
  br i1 undef, label %lbl_919, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          
  br label %for.inc

lbl_919:                                          
  br label %for.cond7.preheader

for.cond7.preheader:                              
  %storemerge.ph = phi i8 [ 0, %lbl_919 ], [ %add, %for.inc ]
  br i1 undef, label %for.inc, label %lbl_919

for.inc:                                          
  %add = add i8 undef, 1
  br label %for.cond7.preheader
}
