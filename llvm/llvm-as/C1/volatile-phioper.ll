














target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"

define void @test(i8** nocapture %PeiServices) #0 {
entry:
  %call = tail call i32 (...) @Trace() #2
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %while.body, label %if.then

if.then:                                          
  %call1 = tail call i32 (...) @Trace() #2
  br label %while.body

while.body:                                       
  %Addr.017 = phi i8* [ %incdec.ptr, %while.body ], [ null, %if.then ], [ null, %entry ]
  %x.016 = phi i8 [ %inc, %while.body ], [ 0, %if.then ], [ 0, %entry ]
  %inc = add i8 %x.016, 1
  %incdec.ptr = getelementptr inbounds i8, i8* %Addr.017, i64 1
  store volatile i8 %x.016, i8* %Addr.017, align 1
  %0 = ptrtoint i8* %incdec.ptr to i64
  %1 = trunc i64 %0 to i32
  %cmp = icmp ult i32 %1, 4096
  br i1 %cmp, label %while.body, label %end

end:
  ret void
}
declare i32 @Trace(...) #1

attributes #0 = { nounwind ssp uwtable "fp-contract-model"="standard" "no-frame-pointer-elim" "no-frame-pointer-elim-non-leaf" "relocation-model"="pic" "ssp-buffers-size"="8" }
attributes #1 = { "fp-contract-model"="standard" "no-frame-pointer-elim" "no-frame-pointer-elim-non-leaf" "relocation-model"="pic" "ssp-buffers-size"="8" }
attributes #2 = { nounwind }

!0 = !{i32 1039}
