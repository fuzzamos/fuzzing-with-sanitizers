



target datalayout = "e-p:32:32:32-i64:64:64-i32:32:32-i16:16:16-i1:32:32-f64:64:64-f32:32:32-a0:0-n32"
target triple = "hexagon-unknown-linux-gnu"

define void @Autocorr() nounwind {
entry:
  br label %for.body

for.body:                                         
  br i1 undef, label %polly.loop_header43, label %for.body

do.cond:                                          
  unreachable

do.end:                                           
  ret void

polly.loop_header:                                
  %0 = icmp sle i32 undef, 239
  br i1 %0, label %polly.loop_body, label %do.cond

polly.loop_body:                                  
  %p_25 = call i32 @llvm.hexagon.SI.to.SXTHI.asrh(i32 undef)
  %1 = insertelement <4 x i32> undef, i32 %p_25, i32 3
  %2 = trunc <4 x i32> %1 to <4 x i16>
  store <4 x i16> %2, <4 x i16>* undef, align 8
  br label %polly.loop_header

polly.loop_after45:                               
  br i1 undef, label %polly.loop_header, label %do.end

polly.loop_header43:                              
  br i1 undef, label %polly.loop_body44, label %polly.loop_after45

polly.loop_body44:                                
  br label %polly.loop_header43
}

declare i32 @llvm.hexagon.SI.to.SXTHI.asrh(i32) nounwind readnone
