



define <{ i32 }> @test() {
  ret <{ i32 }> insertvalue (<{ i64 }> zeroinitializer, i32 4, 0)
}
