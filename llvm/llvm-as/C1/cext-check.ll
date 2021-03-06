


define i32 @cext_test1(i32* %a) nounwind {




entry:
  %0 = load i32, i32* %a, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:
  %arrayidx1 = getelementptr inbounds i32, i32* %a, i32 2000
  %1 = load i32, i32* %arrayidx1, align 4
  %add = add nsw i32 %1, 300000
  br label %return

if.end:
  %arrayidx2 = getelementptr inbounds i32, i32* %a, i32 1023
  %2 = load i32, i32* %arrayidx2, align 4
  %add3 = add nsw i32 %2, 300
  br label %return

return:
  %retval.0 = phi i32 [ %add, %if.then ], [ %add3, %if.end ]
  ret i32 %retval.0
}

define i32 @cext_test2(i8* %a) nounwind {




entry:
  %tobool = icmp ne i8* %a, null
  br i1 %tobool, label %if.then, label %if.end

if.then:
  %arrayidx = getelementptr inbounds i8, i8* %a, i32 1023
  %0 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %add = add nsw i32 %conv, 300000
  br label %return

if.end:
  %arrayidx1 = getelementptr inbounds i8, i8* %a, i32 1024
  %1 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %add3 = add nsw i32 %conv2, 6000
  br label %return

return:
  %retval.0 = phi i32 [ %add, %if.then ], [ %add3, %if.end ]
  ret i32 %retval.0
}
