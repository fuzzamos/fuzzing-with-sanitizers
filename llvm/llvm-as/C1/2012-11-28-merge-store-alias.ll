








declare i32 @foo([10 x i32]* )

define i32 @merge_stores_can() nounwind ssp {
  %object1 = alloca [10 x i32]

  %ret0 = call i32 @foo([10 x i32]* %object1) nounwind

  %O1_1 = getelementptr [10 x i32], [10 x i32]* %object1, i64 0, i32 1
  %O1_2 = getelementptr [10 x i32], [10 x i32]* %object1, i64 0, i32 2
  %O1_3 = getelementptr [10 x i32], [10 x i32]* %object1, i64 0, i32 3
  %O1_4 = getelementptr [10 x i32], [10 x i32]* %object1, i64 0, i32 4
  %ld_ptr = getelementptr [10 x i32], [10 x i32]* %object1, i64 0, i32 9

  store i32 0, i32* %O1_1
  store i32 0, i32* %O1_2
  %ret = load  i32,  i32* %ld_ptr  
  store i32 0, i32* %O1_3
  store i32 0, i32* %O1_4

  %ret1 = call i32 @foo([10 x i32]* %object1) nounwind

  ret i32 %ret
}





define i32 @merge_stores_cant([10 x i32]* %in0, [10 x i32]* %in1) nounwind ssp {

  %O1_1 = getelementptr [10 x i32], [10 x i32]* %in1, i64 0, i32 1
  %O1_2 = getelementptr [10 x i32], [10 x i32]* %in1, i64 0, i32 2
  %O1_3 = getelementptr [10 x i32], [10 x i32]* %in1, i64 0, i32 3
  %O1_4 = getelementptr [10 x i32], [10 x i32]* %in1, i64 0, i32 4
  %ld_ptr = getelementptr [10 x i32], [10 x i32]* %in0, i64 0, i32 2

  store i32 0, i32* %O1_1
  store i32 0, i32* %O1_2
  %ret = load  i32,  i32* %ld_ptr  
  store i32 0, i32* %O1_3
  store i32 0, i32* %O1_4

  ret i32 %ret
}
