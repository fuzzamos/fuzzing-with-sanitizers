












define void @f() {
  ret void, !dbg !14
}

define void @g() {
  ret void, !dbg !15
}

!llvm.dbg.cu = !{!0, !8}
!llvm.module.flags = !{!13, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.4 (192092)", isOptimized: false, emissionKind: 0, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "test1.c", directory: "/tmp")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "f", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, isOptimized: false, scopeLine: 1, file: !1, scope: !5, type: !6, function: void ()* @f, variables: !2)
!5 = !DIFile(filename: "test1.c", directory: "/tmp")
!6 = !DISubroutineType(types: !7)
!7 = !{null}
!8 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.4 (192092)", isOptimized: false, emissionKind: 0, file: !9, enums: !2, retainedTypes: !2, subprograms: !10, globals: !2, imports: !2)
!9 = !DIFile(filename: "test2.c", directory: "/tmp")
!10 = !{!11}
!11 = distinct !DISubprogram(name: "g", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, isOptimized: false, scopeLine: 1, file: !9, scope: !12, type: !6, function: void ()* @g, variables: !2)
!12 = !DIFile(filename: "test2.c", directory: "/tmp")
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !DILocation(line: 1, scope: !4)
!15 = !DILocation(line: 1, scope: !11)
!16 = !{i32 1, !"Debug Info Version", i32 3}
