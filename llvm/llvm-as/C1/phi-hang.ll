


define void @test1(i32 %arg) {
bb:
  br label %bb1

bb1:                                              
  %tmp = phi i32 [ 1, %bb ], [ %tmp7, %bb5 ]
  %tmp2 = phi i32 [ %arg, %bb ], [ %tmp9, %bb5 ]
  br i1 true, label %bb5, label %bb3

bb3:                                              
  br label %bb4

bb4:                                              
  br label %bb5

bb5:                                              
  %tmp6 = phi i32 [ 0, %bb4 ], [ %tmp, %bb1 ]
  %tmp7 = phi i32 [ 0, %bb4 ], [ %tmp6, %bb1 ]
  %tmp8 = phi i32 [ 0, %bb4 ], [ %tmp, %bb1 ]
  %tmp9 = add nsw i32 %tmp2, 1
  %tmp10 = icmp eq i32 %tmp9, 0
  br i1 %tmp10, label %bb11, label %bb1

bb11:                                             
  ret void
}


define void @test2() {
bb:
  br label %bb1

bb1:                                              
  %tmp = phi i32 [ 0, %bb ], [ %tmp5, %bb1 ]
  %tmp2 = phi i32 [ 0, %bb ], [ 1, %bb1 ]
  %tmp3 = phi i32 [ 0, %bb ], [ %tmp4, %bb1 ]
  %tmp4 = or i32 %tmp2, %tmp3
  %tmp5 = add nsw i32 %tmp, 1
  %tmp6 = icmp eq i32 %tmp5, 0
  br i1 %tmp6, label %bb7, label %bb1

bb7:                                              
  ret void
}
