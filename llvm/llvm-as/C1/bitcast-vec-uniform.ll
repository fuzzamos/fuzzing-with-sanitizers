




define <4 x i32> @a(<1 x i64> %y) {
  %c = bitcast <2 x i64> <i64 0, i64 0> to <4 x i32>
  ret <4 x i32> %c
}





define <4 x i32> @b(<1 x i64> %y) {
  %c = bitcast <2 x i64> <i64 -1, i64 -1> to <4 x i32>
  ret <4 x i32> %c
}






define <2 x float> @foo() {
  %cast = bitcast i64 -1 to <2 x float>
  ret <2 x float> %cast
}





define <2 x double> @foo2() {
  %cast = bitcast i128 -1 to <2 x double>
  ret <2 x double> %cast
}




define <1 x float> @foo3() {
  %cast = bitcast i32 -1 to <1 x float>
  ret <1 x float> %cast
}




define float @foo4() {
  %cast = bitcast <1 x i32 ><i32 -1> to float
  ret float %cast
}




define double @foo5() {
  %cast = bitcast <2 x i32 ><i32 -1, i32 -1> to double
  ret double %cast
}





define <2 x double> @foo6() {
  %cast = bitcast <4 x i32><i32 -1, i32 -1, i32 -1, i32 -1> to <2 x double>
  ret <2 x double> %cast
}
