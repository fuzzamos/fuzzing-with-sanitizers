

declare i32 @foo()

define i32 @test() {
  %tmp.0 = tail call i32 @foo( )
  %tmp.1 = mul i32 %tmp.0, 9


  ret i32 %tmp.1
}

