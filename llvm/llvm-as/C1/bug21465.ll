


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"
target triple = "nvptx64-unknown-unknown"

%struct.S = type { i32, i32 }


define void @_Z11TakesStruct1SPi(%struct.S* byval nocapture readonly %input, i32* nocapture %output) #0 {
entry:



  %b = getelementptr inbounds %struct.S, %struct.S* %input, i64 0, i32 1
  %0 = load i32, i32* %b, align 4


  store i32 %0, i32* %output, align 4

  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!nvvm.annotations = !{!0}

!0 = !{void (%struct.S*, i32*)* @_Z11TakesStruct1SPi, !"kernel", i32 1}
