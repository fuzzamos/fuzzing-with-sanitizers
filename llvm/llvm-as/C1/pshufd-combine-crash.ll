







define <4 x float> @test(<4 x float> %V) {
  %1 = shufflevector <4 x float> %V, <4 x float> undef, <4 x i32> <i32 3, i32 0, i32 2, i32 1>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 3, i32 0, i32 2, i32 1>
  ret <4 x float> %2
}

