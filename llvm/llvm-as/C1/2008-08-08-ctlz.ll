

define i32 @A0(i32 %u) nounwind  {
entry:

  call i32 @llvm.ctlz.i32( i32 %u, i1 true )
  ret i32 %0
}

declare i32 @llvm.ctlz.i32(i32, i1) nounwind readnone 
