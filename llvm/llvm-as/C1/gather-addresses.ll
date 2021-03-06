



































define <4 x double> @foo(double* %p, <4 x i32>* %i, <4 x i32>* %h) nounwind {
  %a = load <4 x i32>, <4 x i32>* %i
  %b = load <4 x i32>, <4 x i32>* %h
  %j = and <4 x i32> %a, %b
  %d0 = extractelement <4 x i32> %j, i32 0
  %d1 = extractelement <4 x i32> %j, i32 1
  %d2 = extractelement <4 x i32> %j, i32 2
  %d3 = extractelement <4 x i32> %j, i32 3
  %q0 = getelementptr double, double* %p, i32 %d0
  %q1 = getelementptr double, double* %p, i32 %d1
  %q2 = getelementptr double, double* %p, i32 %d2
  %q3 = getelementptr double, double* %p, i32 %d3
  %r0 = load double, double* %q0
  %r1 = load double, double* %q1
  %r2 = load double, double* %q2
  %r3 = load double, double* %q3
  %v0 = insertelement <4 x double> undef, double %r0, i32 0
  %v1 = insertelement <4 x double> %v0, double %r1, i32 1
  %v2 = insertelement <4 x double> %v1, double %r2, i32 2
  %v3 = insertelement <4 x double> %v2, double %r3, i32 3
  ret <4 x double> %v3
}










define <4 x i64> @old(double* %p, <4 x i32>* %i, <4 x i32>* %h, i64 %f) nounwind {
  %a = load <4 x i32>, <4 x i32>* %i
  %b = load <4 x i32>, <4 x i32>* %h
  %j = and <4 x i32> %a, %b
  %d0 = extractelement <4 x i32> %j, i32 0
  %d1 = extractelement <4 x i32> %j, i32 1
  %d2 = extractelement <4 x i32> %j, i32 2
  %d3 = extractelement <4 x i32> %j, i32 3
  %q0 = zext i32 %d0 to i64
  %q1 = zext i32 %d1 to i64
  %q2 = zext i32 %d2 to i64
  %q3 = zext i32 %d3 to i64  
  %r0 = and i64 %q0, %f
  %r1 = and i64 %q1, %f
  %r2 = and i64 %q2, %f
  %r3 = and i64 %q3, %f
  %v0 = insertelement <4 x i64> undef, i64 %r0, i32 0
  %v1 = insertelement <4 x i64> %v0, i64 %r1, i32 1
  %v2 = insertelement <4 x i64> %v1, i64 %r2, i32 2
  %v3 = insertelement <4 x i64> %v2, i64 %r3, i32 3
  ret <4 x i64> %v3
}
