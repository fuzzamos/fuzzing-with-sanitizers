




declare i64 @foo()


define i64 @f1(i64 %a, i64 %b) {



  %xor = xor i64 %a, %b
  ret i64 %xor
}


define i64 @f2(i64 %a, i64 *%src) {



  %b = load i64 , i64 *%src
  %xor = xor i64 %a, %b
  ret i64 %xor
}


define i64 @f3(i64 %a, i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 65535
  %b = load i64 , i64 *%ptr
  %xor = xor i64 %a, %b
  ret i64 %xor
}



define i64 @f4(i64 %a, i64 *%src) {




  %ptr = getelementptr i64, i64 *%src, i64 65536
  %b = load i64 , i64 *%ptr
  %xor = xor i64 %a, %b
  ret i64 %xor
}


define i64 @f5(i64 %a, i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 -1
  %b = load i64 , i64 *%ptr
  %xor = xor i64 %a, %b
  ret i64 %xor
}


define i64 @f6(i64 %a, i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 -65536
  %b = load i64 , i64 *%ptr
  %xor = xor i64 %a, %b
  ret i64 %xor
}



define i64 @f7(i64 %a, i64 *%src) {




  %ptr = getelementptr i64, i64 *%src, i64 -65537
  %b = load i64 , i64 *%ptr
  %xor = xor i64 %a, %b
  ret i64 %xor
}


define i64 @f8(i64 %a, i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 524280
  %ptr = inttoptr i64 %add2 to i64 *
  %b = load i64 , i64 *%ptr
  %xor = xor i64 %a, %b
  ret i64 %xor
}


define i64 @f9(i64 *%ptr0) {




  %ptr1 = getelementptr i64, i64 *%ptr0, i64 2
  %ptr2 = getelementptr i64, i64 *%ptr0, i64 4
  %ptr3 = getelementptr i64, i64 *%ptr0, i64 6
  %ptr4 = getelementptr i64, i64 *%ptr0, i64 8
  %ptr5 = getelementptr i64, i64 *%ptr0, i64 10
  %ptr6 = getelementptr i64, i64 *%ptr0, i64 12
  %ptr7 = getelementptr i64, i64 *%ptr0, i64 14
  %ptr8 = getelementptr i64, i64 *%ptr0, i64 16
  %ptr9 = getelementptr i64, i64 *%ptr0, i64 18

  %val0 = load i64 , i64 *%ptr0
  %val1 = load i64 , i64 *%ptr1
  %val2 = load i64 , i64 *%ptr2
  %val3 = load i64 , i64 *%ptr3
  %val4 = load i64 , i64 *%ptr4
  %val5 = load i64 , i64 *%ptr5
  %val6 = load i64 , i64 *%ptr6
  %val7 = load i64 , i64 *%ptr7
  %val8 = load i64 , i64 *%ptr8
  %val9 = load i64 , i64 *%ptr9

  %ret = call i64 @foo()

  %xor0 = xor i64 %ret, %val0
  %xor1 = xor i64 %xor0, %val1
  %xor2 = xor i64 %xor1, %val2
  %xor3 = xor i64 %xor2, %val3
  %xor4 = xor i64 %xor3, %val4
  %xor5 = xor i64 %xor4, %val5
  %xor6 = xor i64 %xor5, %val6
  %xor7 = xor i64 %xor6, %val7
  %xor8 = xor i64 %xor7, %val8
  %xor9 = xor i64 %xor8, %val9

  ret i64 %xor9
}
