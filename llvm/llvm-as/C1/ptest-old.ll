


define i32 @foo(<4 x float> %bar) nounwind {
entry:

 %res1 = call i32 @llvm.x86.sse41.ptestc(<4 x float> %bar, <4 x float> %bar)

 %res2 = call i32 @llvm.x86.sse41.ptestz(<4 x float> %bar, <4 x float> %bar)

 %res3 = call i32 @llvm.x86.sse41.ptestnzc(<4 x float> %bar, <4 x float> %bar)
 %add1 = add i32 %res1, %res2
 %add2 = add i32 %add1, %res2
 ret i32 %add2
}





declare i32 @llvm.x86.sse41.ptestc(<4 x float>, <4 x float>) nounwind readnone
declare i32 @llvm.x86.sse41.ptestz(<4 x float>, <4 x float>) nounwind readnone
declare i32 @llvm.x86.sse41.ptestnzc(<4 x float>, <4 x float>) nounwind readnone



