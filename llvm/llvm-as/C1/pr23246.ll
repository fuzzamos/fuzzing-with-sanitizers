

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"








define <2 x i64> @test(x86_mmx %a) #0 {
entry:
  %b = bitcast x86_mmx %a to <1 x i64>
  %s = shufflevector <1 x i64> %b, <1 x i64> undef, <2 x i32> <i32 undef, i32 0>
  ret <2 x i64> %s
}

attributes #0 = { nounwind }
