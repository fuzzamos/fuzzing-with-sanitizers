


define linkonce_odr arm_apcscc void @func1() personality i8* bitcast (i32 (...)* @__gxx_personality_sj0 to i8*) {
entry:
  %save_filt.936 = alloca i32                     
  %save_eptr.935 = alloca i8*                     
  %eh_exception = alloca i8*                      
  %eh_selector = alloca i32                       
  %"alloca point" = bitcast i32 0 to i32          
  call arm_apcscc  void @func2()
  br label %return

bb:                                               
  %eh_select = load i32, i32* %eh_selector             
  store i32 %eh_select, i32* %save_filt.936, align 4
  %eh_value = load i8*, i8** %eh_exception             
  store i8* %eh_value, i8** %save_eptr.935, align 4
  invoke arm_apcscc  void @func3()
          to label %invcont unwind label %lpad

invcont:                                          
  %tmp6 = load i8*, i8** %save_eptr.935, align 4          
  store i8* %tmp6, i8** %eh_exception, align 4
  %tmp7 = load i32, i32* %save_filt.936, align 4          
  store i32 %tmp7, i32* %eh_selector, align 4
  br label %Unwind

bb12:                                             
  call arm_apcscc  void @_ZSt9terminatev() noreturn nounwind
  unreachable

return:                                           
  ret void

lpad:                                             
  %eh_ptr = landingpad { i8*, i32 }
              cleanup
  %exn = extractvalue { i8*, i32 } %eh_ptr, 0
  store i8* %exn, i8** %eh_exception
  %eh_ptr13 = load i8*, i8** %eh_exception             
  %eh_select14 = extractvalue { i8*, i32 } %eh_ptr, 1
  store i32 %eh_select14, i32* %eh_selector
  br label %ppad

ppad:
  br label %bb12

Unwind:
  %eh_ptr15 = load i8*, i8** %eh_exception
  call arm_apcscc  void @_Unwind_SjLj_Resume(i8* %eh_ptr15)
  unreachable
}

declare arm_apcscc void @func2()

declare arm_apcscc void @_ZSt9terminatev() noreturn nounwind

declare arm_apcscc void @_Unwind_SjLj_Resume(i8*)

declare arm_apcscc void @func3()

declare arm_apcscc i32 @__gxx_personality_sj0(...)
