




define void @foo(i32 %x, i32 %y, i32* nocapture %P) nounwind ssp {
entry:








  %div = sdiv i32 %x, %y
  store i32 %div, i32* %P, align 4
  %rem = srem i32 %x, %y
  %arrayidx6 = getelementptr inbounds i32, i32* %P, i32 1
  store i32 %rem, i32* %arrayidx6, align 4
  ret void
}

define void @bar(i32 %x, i32 %y, i32* nocapture %P) nounwind ssp {
entry:








  %div = udiv i32 %x, %y
  store i32 %div, i32* %P, align 4
  %rem = urem i32 %x, %y
  %arrayidx6 = getelementptr inbounds i32, i32* %P, i32 1
  store i32 %rem, i32* %arrayidx6, align 4
  ret void
}


@flags = external unnamed_addr global i32
@tabsize = external unnamed_addr global i32

define void @do_indent(i32 %cols) nounwind {
entry:


  %0 = load i32, i32* @flags, align 4
  %1 = and i32 %0, 67108864
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb1, label %bb

bb:




  %3 = load i32, i32* @tabsize, align 4
  %4 = srem i32 %cols, %3
  %5 = sdiv i32 %cols, %3
  %6 = tail call i32 @llvm.objectsize.i32.p0i8(i8* null, i1 false)
  %7 = tail call i8* @__memset_chk(i8* null, i32 9, i32 %5, i32 %6) nounwind
  br label %bb1

bb1:
  %line_indent_len.0 = phi i32 [ %4, %bb ], [ 0, %entry ]
  %8 = getelementptr inbounds i8, i8* null, i32 %line_indent_len.0
  store i8 0, i8* %8, align 1
  ret void
}

declare i32 @llvm.objectsize.i32.p0i8(i8*, i1) nounwind readnone
declare i8* @__memset_chk(i8*, i32, i32, i32) nounwind


define i32 @howmany(i32 %x, i32 %y) nounwind {
entry:








  %rem = urem i32 %x, %y
  %div = udiv i32 %x, %y
  %not.cmp = icmp ne i32 %rem, 0
  %add = zext i1 %not.cmp to i32
  %cond = add i32 %add, %div
  ret i32 %cond
}
