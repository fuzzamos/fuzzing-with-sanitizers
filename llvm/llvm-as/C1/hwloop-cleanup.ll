










define i32 @test1(i32* nocapture %b, i32 %n) nounwind readonly {
entry:
  %cmp1 = icmp sgt i32 %n, 0
  br i1 %cmp1, label %for.body.preheader, label %for.end

for.body.preheader:
  br label %for.body

for.body:                                         
  %sum.03 = phi i32 [ %add, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx.phi = phi i32* [ %arrayidx.inc, %for.body ], [ %b, %for.body.preheader ]
  %i.02 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %0 = load i32, i32* %arrayidx.phi, align 4
  %add = add nsw i32 %0, %sum.03
  %inc = add nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %inc, %n
  %arrayidx.inc = getelementptr i32, i32* %arrayidx.phi, i32 1
  br i1 %exitcond, label %for.end.loopexit, label %for.body

for.end.loopexit:
  br label %for.end

for.end:
  %sum.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.end.loopexit ]
  ret i32 %sum.0.lcssa
}








define i32 @test2(i32* nocapture %b) nounwind readonly {
entry:
  br label %for.body

for.body:
  %sum.02 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %arrayidx.phi = phi i32* [ %b, %entry ], [ %arrayidx.inc, %for.body ]
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %0 = load i32, i32* %arrayidx.phi, align 4
  %add = add nsw i32 %0, %sum.02
  %inc = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %inc, 40
  %arrayidx.inc = getelementptr i32, i32* %arrayidx.phi, i32 1
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %add
}






define i32 @test3(i32* nocapture %b) nounwind {
entry:
  br label %for.body

for.body:
  %arrayidx.phi = phi i32* [ %b, %entry ], [ %arrayidx.inc, %for.body ]
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %i.01, i32* %arrayidx.phi, align 4
  %inc = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %inc, 40
  %arrayidx.inc = getelementptr i32, i32* %arrayidx.phi, i32 1
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 0
}


