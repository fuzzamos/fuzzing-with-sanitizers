



%FunTy = type i32 (i32)

define void @invoke(%FunTy* %x) {
  %foo = call i32 %x( i32 123 )           
  %foo2 = tail call i32 %x( i32 123 )             
  ret void
}

define i32 @main(i32 %argc) personality i32 (...)* @__gxx_personality_v0 {
  %retval = call i32 @test( i32 %argc )           
  %two = add i32 %retval, %retval         
  %retval2 = invoke i32 @test( i32 %argc )
     to label %Next unwind label %Error              

Next:
  %two2 = add i32 %two, %retval2          
  call void @invoke( %FunTy* @test )
  ret i32 %two2

Error:
  %exn = landingpad {i8*, i32}
            cleanup
  ret i32 -1
}

define i32 @test(i32 %i0) {
        ret i32 %i0
}

declare i32 @__gxx_personality_v0(...)
