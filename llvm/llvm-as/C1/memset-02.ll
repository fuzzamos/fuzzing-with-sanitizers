



declare void @llvm.memset.p0i8.i32(i8 *nocapture, i8, i32, i32, i1) nounwind
declare void @llvm.memset.p0i8.i64(i8 *nocapture, i8, i64, i32, i1) nounwind


define void @f1(i8 *%dest) {



  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 128, i32 0, i32 1, i1 false)
  ret void
}


define void @f2(i8 *%dest) {



  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 128, i64 0, i32 1, i1 false)
  ret void
}


define void @f3(i8 *%dest) {



  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 128, i32 1, i32 1, i1 false)
  ret void
}


define void @f4(i8 *%dest) {



  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 128, i64 1, i32 1, i1 false)
  ret void
}


define void @f5(i8 *%dest) {



  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 128, i32 2, i32 1, i1 false)
  ret void
}


define void @f6(i8 *%dest) {



  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 128, i64 2, i32 1, i1 false)
  ret void
}


define void @f7(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 128, i32 3, i32 1, i1 false)
  ret void
}


define void @f8(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 128, i64 3, i32 1, i1 false)
  ret void
}


define void @f9(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 128, i32 4, i32 1, i1 false)
  ret void
}


define void @f10(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 128, i64 4, i32 1, i1 false)
  ret void
}


define void @f11(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 128, i32 5, i32 1, i1 false)
  ret void
}


define void @f12(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 128, i64 5, i32 1, i1 false)
  ret void
}


define void @f13(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 128, i32 257, i32 1, i1 false)
  ret void
}


define void @f14(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 128, i64 257, i32 1, i1 false)
  ret void
}


define void @f15(i8 *%dest) {





  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 128, i32 258, i32 1, i1 false)
  ret void
}


define void @f16(i8 *%dest) {





  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 128, i64 258, i32 1, i1 false)
  ret void
}
