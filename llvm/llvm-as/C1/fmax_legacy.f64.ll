


declare i32 @llvm.r600.read.tidig.x() #1


define void @test_fmax_legacy_uge_f64(double addrspace(1)* %out, double addrspace(1)* %in) #0 {
  %tid = call i32 @llvm.r600.read.tidig.x() #1
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1

  %a = load double, double addrspace(1)* %gep.0, align 8
  %b = load double, double addrspace(1)* %gep.1, align 8

  %cmp = fcmp uge double %a, %b
  %val = select i1 %cmp, double %a, double %b
  store double %val, double addrspace(1)* %out, align 8
  ret void
}


define void @test_fmax_legacy_oge_f64(double addrspace(1)* %out, double addrspace(1)* %in) #0 {
  %tid = call i32 @llvm.r600.read.tidig.x() #1
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1

  %a = load double, double addrspace(1)* %gep.0, align 8
  %b = load double, double addrspace(1)* %gep.1, align 8

  %cmp = fcmp oge double %a, %b
  %val = select i1 %cmp, double %a, double %b
  store double %val, double addrspace(1)* %out, align 8
  ret void
}


define void @test_fmax_legacy_ugt_f64(double addrspace(1)* %out, double addrspace(1)* %in) #0 {
  %tid = call i32 @llvm.r600.read.tidig.x() #1
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1

  %a = load double, double addrspace(1)* %gep.0, align 8
  %b = load double, double addrspace(1)* %gep.1, align 8

  %cmp = fcmp ugt double %a, %b
  %val = select i1 %cmp, double %a, double %b
  store double %val, double addrspace(1)* %out, align 8
  ret void
}


define void @test_fmax_legacy_ogt_f64(double addrspace(1)* %out, double addrspace(1)* %in) #0 {
  %tid = call i32 @llvm.r600.read.tidig.x() #1
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1

  %a = load double, double addrspace(1)* %gep.0, align 8
  %b = load double, double addrspace(1)* %gep.1, align 8

  %cmp = fcmp ogt double %a, %b
  %val = select i1 %cmp, double %a, double %b
  store double %val, double addrspace(1)* %out, align 8
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
