




@as0 = external global i32
@as1 = external addrspace(1) global i32

declare void @addrspace0(i32*)
declare void @addrspace1(i32 addrspace(1)*)




define void @test() {
  call void @addrspace0(i32* @as0)
  call void @addrspace1(i32 addrspace(1)* @as1)
  ret void
}
