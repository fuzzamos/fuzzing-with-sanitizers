


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"







define i8* @test(i64 %a, i8* %b)  {
entry:
  call void @llvm.eh.unwind.init()
  %foo   = alloca i32
  call void @llvm.eh.return.i64(i64 %a, i8* %b)
  unreachable
}

declare void @llvm.eh.return.i64(i64, i8*)
declare void @llvm.eh.unwind.init()

@b = common global i32 0, align 4
@a = common global i32 0, align 4




define i32 @_Unwind_Resume_or_Rethrow() nounwind uwtable ssp {
entry:
  %0 = load i32, i32* @b, align 4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          
  ret i32 0

if.end:                                           
  %call = tail call i32 (...) @_Unwind_ForcedUnwind_Phase2() nounwind
  store i32 %call, i32* @a, align 4
  %tobool1 = icmp eq i32 %call, 0
  br i1 %tobool1, label %cond.end, label %cond.true

cond.true:                                        
  tail call void @abort() noreturn nounwind
  unreachable

cond.end:                                         
  tail call void @llvm.eh.return.i64(i64 0, i8* null)
  unreachable
}

declare i32 @_Unwind_ForcedUnwind_Phase2(...)
declare void @abort() noreturn
