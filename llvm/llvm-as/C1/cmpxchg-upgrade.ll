





define void @test(i32* %addr) {
   cmpxchg i32* %addr, i32 42, i32 0 monotonic


   cmpxchg i32* %addr, i32 42, i32 0 acquire


   cmpxchg i32* %addr, i32 42, i32 0 release


   cmpxchg i32* %addr, i32 42, i32 0 acq_rel


   cmpxchg i32* %addr, i32 42, i32 0 seq_cst


   ret void
}
