


define void @test() nounwind {
entry:
 br label %for.body

for.body:
 %0 = phi i32 [ 1, %entry ], [ 0, %for.body ]
 br label %for.body
}



define void @test2() nounwind {
entry:
 br label %for.body

for.body:                                         
 %indvars.iv47 = phi i64 [ 0, %entry ], [ %indvars.iv.next48, %for.body ]
 %0 = phi i32 [ 1, %entry ], [ 0, %for.body ]
 %indvars.iv.next48 = add i64 %indvars.iv47, 1
 br i1 undef, label %for.end, label %for.body

for.end:                                          
 unreachable
}


define void @start_model_rare() nounwind uwtable ssp {
entry:
  br i1 undef, label %return, label %if.end

if.end:                                           
  br i1 undef, label %cond.false, label %cond.true

cond.true:                                        
  unreachable

cond.false:                                       
  br i1 undef, label %cond.false28, label %cond.true20

cond.true20:                                      
  unreachable

cond.false28:                                     
  br label %for.body40

for.body40:                                       
  %indvars.iv123 = phi i64 [ 3, %cond.false28 ], [ %indvars.iv.next124, %for.inc50 ]
  %step.0121 = phi i32 [ 1, %cond.false28 ], [ %step.1, %for.inc50 ]
  br i1 undef, label %if.then46, label %for.inc50

if.then46:                                        
  %inc47 = add nsw i32 %step.0121, 1
  br label %for.inc50

for.inc50:                                        
  %k.1 = phi i32 [ undef, %for.body40 ], [ %inc47, %if.then46 ]
  %step.1 = phi i32 [ %step.0121, %for.body40 ], [ %inc47, %if.then46 ]
  %indvars.iv.next124 = add i64 %indvars.iv123, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next124 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 256
  br i1 %exitcond, label %for.end52, label %for.body40

for.end52:                                        
  unreachable

return:                                           
  ret void
}
