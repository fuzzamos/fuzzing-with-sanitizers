

target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define fastcc void @copy_to_conceal() #0 {
entry:
  br i1 undef, label %if.then, label %if.end210

if.then:                                          
  br label %vector.body.i

vector.body.i:                                    
  %index.i = phi i64 [ 0, %vector.body.i ], [ 0, %if.then ]
  store <8 x i16> zeroinitializer, <8 x i16>* undef, align 2
  br label %vector.body.i

if.end210:                                        
  ret void









}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
