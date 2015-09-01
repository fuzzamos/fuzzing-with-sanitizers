

define i32 @t1(i32 %a, i32 %b) nounwind readnone ssp {
entry:



  %add = add i32 %b, %a
  ret i32 %add
}

define i32 @t2(i32 %a, i32 %b) nounwind readnone ssp {
entry:



  %udiv = udiv i32 %a, %b
  ret i32 %udiv
}

define i64 @t3(i64 %a, i64 %b) nounwind readnone ssp {
entry:



  %udiv = udiv i64 %a, %b
  ret i64 %udiv
}

define i32 @t4(i32 %a, i32 %b) nounwind readnone ssp {
entry:



  %sdiv = sdiv i32 %a, %b
  ret i32 %sdiv
}

define i64 @t5(i64 %a, i64 %b) nounwind readnone ssp {
entry:



  %sdiv = sdiv i64 %a, %b
  ret i64 %sdiv
}

define i32 @t6(i32 %a, i32 %b) nounwind readnone ssp {
entry:



  %shl = shl i32 %a, %b
  ret i32 %shl
}

define i64 @t7(i64 %a, i64 %b) nounwind readnone ssp {
entry:



  %shl = shl i64 %a, %b
  ret i64 %shl
}

define i32 @t8(i32 %a, i32 %b) nounwind readnone ssp {
entry:



  %lshr = lshr i32 %a, %b
  ret i32 %lshr
}

define i64 @t9(i64 %a, i64 %b) nounwind readnone ssp {
entry:



  %lshr = lshr i64 %a, %b
  ret i64 %lshr
}

define i32 @t10(i32 %a, i32 %b) nounwind readnone ssp {
entry:



  %ashr = ashr i32 %a, %b
  ret i32 %ashr
}

define i64 @t11(i64 %a, i64 %b) nounwind readnone ssp {
entry:



  %ashr = ashr i64 %a, %b
  ret i64 %ashr
}

define i32 @t12(i16 %a, i32 %x) nounwind ssp {
entry:



  %c = sext i16 %a to i32
  %e = add i32 %x, %c
  ret i32 %e
}

define i32 @t13(i16 %a, i32 %x) nounwind ssp {
entry:



  %c = sext i16 %a to i32
  %d = shl i32 %c, 2
  %e = add i32 %x, %d
  ret i32 %e
}

define i64 @t14(i16 %a, i64 %x) nounwind ssp {
entry:




  %c = zext i16 %a to i64
  %d = shl i64 %c, 3
  %e = add i64 %x, %d
  ret i64 %e
}


define i64 @t15(i64 %a, i64 %x) nounwind ssp {
entry:



  %b = and i64 %a, 4294967295
  %c = add i64 %x, %b
  ret i64 %c
}

define i64 @t16(i64 %x) nounwind ssp {
entry:



  %a = shl i64 %x, 1
  ret i64 %a
}


define i64 @t17(i16 %a, i64 %x) nounwind ssp {
entry:




  %tmp16 = sext i16 %a to i64
  %tmp17 = mul i64 %tmp16, -4294967296
  ret i64 %tmp17
}

define i32 @t18(i32 %a, i32 %b) nounwind readnone ssp {
entry:



  %sdiv = call i32 @llvm.aarch64.sdiv.i32(i32 %a, i32 %b)
  ret i32 %sdiv
}

define i64 @t19(i64 %a, i64 %b) nounwind readnone ssp {
entry:



  %sdiv = call i64 @llvm.aarch64.sdiv.i64(i64 %a, i64 %b)
  ret i64 %sdiv
}

define i32 @t20(i32 %a, i32 %b) nounwind readnone ssp {
entry:



  %udiv = call i32 @llvm.aarch64.udiv.i32(i32 %a, i32 %b)
  ret i32 %udiv
}

define i64 @t21(i64 %a, i64 %b) nounwind readnone ssp {
entry:



  %udiv = call i64 @llvm.aarch64.udiv.i64(i64 %a, i64 %b)
  ret i64 %udiv
}

declare i32 @llvm.aarch64.sdiv.i32(i32, i32) nounwind readnone
declare i64 @llvm.aarch64.sdiv.i64(i64, i64) nounwind readnone
declare i32 @llvm.aarch64.udiv.i32(i32, i32) nounwind readnone
declare i64 @llvm.aarch64.udiv.i64(i64, i64) nounwind readnone


define i32 @inv_32(i32 %x) nounwind ssp {
entry:



  %inv = xor i32 %x, -1
  ret i32 %inv
}


define i64 @inv_64(i64 %x) nounwind ssp {
entry:



  %inv = xor i64 %x, -1
  ret i64 %inv
}




define i32 @f0(i32 %a) nounwind readnone ssp {



  %res = mul i32 %a, 9
  ret i32 %res
}

define i64 @f1(i64 %a) nounwind readnone ssp {




  %res = mul i64 %a, 15
  ret i64 %res
}

define i32 @f2(i32 %a) nounwind readnone ssp {




  %res = mul nsw i32 %a, 7
  ret i32 %res
}

define i64 @f3(i64 %a) nounwind readnone ssp {



  %res = mul nsw i64 %a, 17
  ret i64 %res
}

define i32 @f4(i32 %a) nounwind readnone ssp {



  %res = mul i32 %a, 3
  ret i32 %res
}
