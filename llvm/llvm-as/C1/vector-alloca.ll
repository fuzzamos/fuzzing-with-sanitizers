











define void @vector_read(i32 addrspace(1)* %out, i32 %index) {
entry:
  %0 = alloca [4 x i32]
  %x = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 0
  %y = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 1
  %z = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 2
  %w = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 3
  store i32 0, i32* %x
  store i32 1, i32* %y
  store i32 2, i32* %z
  store i32 3, i32* %w
  %1 = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 %index
  %2 = load i32, i32* %1
  store i32 %2, i32 addrspace(1)* %out
  ret void
}








define void @vector_write(i32 addrspace(1)* %out, i32 %w_index, i32 %r_index) {
entry:
  %0 = alloca [4 x i32]
  %x = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 0
  %y = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 1
  %z = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 2
  %w = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 3
  store i32 0, i32* %x
  store i32 0, i32* %y
  store i32 0, i32* %z
  store i32 0, i32* %w
  %1 = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 %w_index
  store i32 1, i32* %1
  %2 = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 %r_index
  %3 = load i32, i32* %2
  store i32 %3, i32 addrspace(1)* %out
  ret void
}





define void @bitcast_gep(i32 addrspace(1)* %out, i32 %w_index, i32 %r_index) {
entry:
  %0 = alloca [4 x i32]
  %x = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 0
  %y = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 1
  %z = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 2
  %w = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 3
  store i32 0, i32* %x
  store i32 0, i32* %y
  store i32 0, i32* %z
  store i32 0, i32* %w
  %1 = getelementptr [4 x i32], [4 x i32]* %0, i32 0, i32 1
  %2 = bitcast i32* %1 to [4 x i32]*
  %3 = getelementptr [4 x i32], [4 x i32]* %2, i32 0, i32 0
  %4 = load i32, i32* %3
  store i32 %4, i32 addrspace(1)* %out
  ret void
}
