

































@x = external global i32


define i32 @main() #0 {
entry:
  %i.addr.i = alloca i32, align 4
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = load i32, i32* @x, align 4, !dbg !16
  store i32 %0, i32* %i.addr.i, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !117, metadata !DIExpression()), !dbg !18
  %1 = load i32, i32* %i.addr.i, align 4, !dbg !18
  %mul.i = mul nsw i32 %1, 2, !dbg !18
  ret i32 %mul.i, !dbg !16
}


define i32 @_ZN2ns4funcEi(i32 %i) #1 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !17, metadata !DIExpression()), !dbg !19
  %0 = load i32, i32* %i.addr, align 4, !dbg !19
  %mul = mul nsw i32 %0, 2, !dbg !19
  ret i32 %mul, !dbg !19
}


declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5.0 ", isOptimized: false, emissionKind: 1, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "namespace_inline_function_definition.cpp", directory: "/tmp/dbginfo")
!2 = !{}
!3 = !{!4, !9}
!4 = distinct !DISubprogram(name: "main", line: 5, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 5, file: !1, scope: !5, type: !6, function: i32 ()* @main, variables: !2)
!5 = !DIFile(filename: "namespace_inline_function_definition.cpp", directory: "/tmp/dbginfo")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = distinct !DISubprogram(name: "func", linkageName: "_ZN2ns4funcEi", line: 6, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 6, file: !1, scope: !10, type: !11, function: i32 (i32)* @_ZN2ns4funcEi, variables: !2)
!10 = !DINamespace(name: "ns", line: 1, file: !1, scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!8, !8}
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{!"clang version 3.5.0 "}
!16 = !DILocation(line: 5, scope: !4)
!17 = !DILocalVariable(name: "i", line: 6, arg: 1, scope: !9, file: !5, type: !8)

!117 = !DILocalVariable(name: "i", line: 6, arg: 1, scope: !9, file: !5, type: !8)

!18 = !DILocation(line: 6, scope: !9, inlinedAt: !16)
!19 = !DILocation(line: 6, scope: !9)
