

@b = common global i32 0, align 4
@c = common global i32 0, align 4
@a = common global i32 0, align 4

declare void @abort() #1


define i32 @main() {
entry:
  %a.promoted13 = load i32, i32* @a, align 4
  br label %for.cond1.preheader

for.cond1.preheader:                              
  %or.lcssa14 = phi i32 [ %a.promoted13, %entry ], [ %or.lcssa, %for.end ]
  %d.010 = phi i32 [ 1, %entry ], [ 0, %for.end ]
  br label %for.body3

for.body3:                                        
  %inc12 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %or11 = phi i32 [ %or.lcssa14, %for.cond1.preheader ], [ %or, %for.body3 ]


  %add = sub i32 %inc12, %d.010
  %or = or i32 %or11, %add
  %inc = add i32 %inc12, 1
  br i1 false, label %for.body3, label %for.end

for.end:                                          
  %or.lcssa = phi i32 [ %or, %for.body3 ]
  br i1 false, label %for.cond1.preheader, label %for.end6

for.end6:                                         
  %or.lcssa.lcssa = phi i32 [ %or.lcssa, %for.end ]
  store i32 %or.lcssa.lcssa, i32* @a, align 4
  %cmp7 = icmp eq i32 %or.lcssa.lcssa, -1
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          
  tail call void @abort() #2
  unreachable

if.end:                                           
  ret i32 0
}
