






define <16 x float> @test1(<16 x float> %x, float* %br, float %y) nounwind {
  %rrr = load float, float* %br
  %rrr2 = insertelement <16 x float> %x, float %rrr, i32 1
  %rrr3 = insertelement <16 x float> %rrr2, float %y, i32 14
  ret <16 x float> %rrr3
}








define <8 x double> @test2(<8 x double> %x, double* %br, double %y) nounwind {
  %rrr = load double, double* %br
  %rrr2 = insertelement <8 x double> %x, double %rrr, i32 1
  %rrr3 = insertelement <8 x double> %rrr2, double %y, i32 6
  ret <8 x double> %rrr3
}





define <16 x float> @test3(<16 x float> %x) nounwind {
  %eee = extractelement <16 x float> %x, i32 4
  %rrr2 = insertelement <16 x float> %x, float %eee, i32 1
  ret <16 x float> %rrr2
}






define <8 x i64> @test4(<8 x i64> %x) nounwind {
  %eee = extractelement <8 x i64> %x, i32 4
  %rrr2 = insertelement <8 x i64> %x, i64 %eee, i32 1
  ret <8 x i64> %rrr2
}




define i32 @test5(<4 x float> %x) nounwind {
  %ef = extractelement <4 x float> %x, i32 3
  %ei = bitcast float %ef to i32
  ret i32 %ei
}




define void @test6(<4 x float> %x, float* %out) nounwind {
  %ef = extractelement <4 x float> %x, i32 3
  store float %ef, float* %out, align 4
  ret void
}





define float @test7(<16 x float> %x, i32 %ind) nounwind {
  %e = extractelement <16 x float> %x, i32 %ind
  ret float %e
}





define double @test8(<8 x double> %x, i32 %ind) nounwind {
  %e = extractelement <8 x double> %x, i32 %ind
  ret double %e
}





define float @test9(<8 x float> %x, i32 %ind) nounwind {
  %e = extractelement <8 x float> %x, i32 %ind
  ret float %e
}






define i32 @test10(<16 x i32> %x, i32 %ind) nounwind {
  %e = extractelement <16 x i32> %x, i32 %ind
  ret i32 %e
}









define <16 x i32> @test11(<16 x i32>%a, <16 x i32>%b) {
  %cmp_res = icmp ult <16 x i32> %a, %b
  %ia = extractelement <16 x i1> %cmp_res, i32 4
  br i1 %ia, label %A, label %B
  A:
    ret <16 x i32>%b
  B:
   %c = add <16 x i32>%b, %a
   ret <16 x i32>%c
}








define i64 @test12(<16 x i64>%a, <16 x i64>%b, i64 %a1, i64 %b1) {

  %cmpvector_func.i = icmp slt <16 x i64> %a, %b
  %extract24vector_func.i = extractelement <16 x i1> %cmpvector_func.i, i32 0
  %res = select i1 %extract24vector_func.i, i64 %a1, i64 %b1
  ret i64 %res
}








define i16 @test13(i32 %a, i32 %b) {
  %cmp_res = icmp ult i32 %a, %b
  %maskv = insertelement <16 x i1> <i1 true, i1 false, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i1 %cmp_res, i32 0
  %res = bitcast <16 x i1> %maskv to i16
  ret i16 %res
}











define i64 @test14(<8 x i64>%a, <8 x i64>%b, i64 %a1, i64 %b1) {

  %cmpvector_func.i = icmp slt <8 x i64> %a, %b
  %extract24vector_func.i = extractelement <8 x i1> %cmpvector_func.i, i32 4
  %res = select i1 %extract24vector_func.i, i64 %a1, i64 %b1
  ret i64 %res
}






define i16 @test15(i1 *%addr) {
  %x = load i1 , i1 * %addr, align 1
  %x1 = insertelement <16 x i1> undef, i1 %x, i32 10
  %x2 = bitcast <16 x i1>%x1 to i16
  ret i16 %x2
}








define i16 @test16(i1 *%addr, i16 %a) {
  %x = load i1 , i1 * %addr, align 128
  %a1 = bitcast i16 %a to <16 x i1>
  %x1 = insertelement <16 x i1> %a1, i1 %x, i32 10
  %x2 = bitcast <16 x i1>%x1 to i16
  ret i16 %x2
}









define i8 @test17(i1 *%addr, i8 %a) {
  %x = load i1 , i1 * %addr, align 128
  %a1 = bitcast i8 %a to <8 x i1>
  %x1 = insertelement <8 x i1> %a1, i1 %x, i32 4
  %x2 = bitcast <8 x i1>%x1 to i8
  ret i8 %x2
}

