


target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

declare void @might_crash(i8* %ehptr)
declare i32 @filt()
declare void @cleanup()
declare i32 @__C_specific_handler(...)
declare i32 @llvm.eh.typeid.for(i8*)

define void @resume_phi() personality i32 (...)* @__C_specific_handler {
entry:
  invoke void @might_crash(i8* null)
          to label %return unwind label %lpad1

lpad1:
  %ehvals1 = landingpad { i8*, i32 }
          catch i32 ()* @filt
  %ehptr1 = extractvalue { i8*, i32 } %ehvals1, 0
  %ehsel1 = extractvalue { i8*, i32 } %ehvals1, 1
  %filt_sel = tail call i32 @llvm.eh.typeid.for(i8* bitcast (i32 ()* @filt to i8*))
  %matches = icmp eq i32 %ehsel1, %filt_sel
  br i1 %matches, label %__except, label %eh.resume

__except:
  invoke void @might_crash(i8* %ehptr1)
          to label %return unwind label %lpad2

lpad2:
  %ehvals2 = landingpad { i8*, i32 }
          cleanup
  %ehptr2 = extractvalue { i8*, i32 } %ehvals2, 0
  %ehsel2 = extractvalue { i8*, i32 } %ehvals2, 1
  call void @cleanup()
  br label %eh.resume

return:
  ret void

eh.resume:
  %ehptr.phi = phi i8* [ %ehptr1, %lpad1 ], [ %ehptr2, %lpad2 ]
  %ehsel.phi = phi i32 [ %ehsel1, %lpad1 ], [ %ehsel2, %lpad2 ]
  %ehval.phi1 = insertvalue { i8*, i32 } undef, i8* %ehptr.phi, 0
  %ehval.phi2 = insertvalue { i8*, i32 } %ehval.phi1, i32 %ehsel.phi, 1
  resume { i8*, i32 } %ehval.phi2
}



















