














target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"
define void @foo(i32* %a) sanitize_address {
entry:
  %tobool = icmp eq i32* %a, null
  br i1 %tobool, label %if.end, label %if.then

  if.then:                                          
  store i32 0, i32* %a, align 4
  br label %if.end

  if.end:                                           
  ret void
}









































































%struct.StructWithVptr = type { i32 (...)** }

define void @CallViaVptr(%struct.StructWithVptr* %foo) uwtable sanitize_address {
entry:
  %0 = bitcast %struct.StructWithVptr* %foo to void (%struct.StructWithVptr*)***
  %vtable = load void (%struct.StructWithVptr*)**, void (%struct.StructWithVptr*)*** %0, align 8
  %1 = load void (%struct.StructWithVptr*)*, void (%struct.StructWithVptr*)** %vtable, align 8
  tail call void %1(%struct.StructWithVptr* %foo)
  tail call void %1(%struct.StructWithVptr* %foo)
  tail call void asm sideeffect "", ""()
  ret void
}








define void @call_unreachable() uwtable sanitize_address {
entry:
  unreachable
}




