


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i686-apple-darwin9.2.2"



define <4 x i1> @foo(<4 x float> %a, <4 x float> %b) nounwind  {
entry:
  %cmp = fcmp olt <4 x float> %a, %b		
  ret <4 x i1> %cmp
}

global <4 x i1> icmp slt ( <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>  <i32 1, i32 2, i32 1, i32 2> )
@B = external global i32
global <4 x i1> icmp slt ( <4 x i32> <i32 ptrtoint (i32 * @B to i32), i32 1, i32 1, i32 1>, <4 x i32>  <i32 1, i32 2, i32 1, i32 2> )
