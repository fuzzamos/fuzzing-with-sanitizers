






define i32 @main() nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  ret i32 0, !dbg !10
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.2 (trunk 160143)", isOptimized: false, emissionKind: 0, file: !12, enums: !1, retainedTypes: !1, subprograms: !3, globals: !1, imports:  !1)
!1 = !{}
!3 = !{!5}
!5 = distinct !DISubprogram(name: "main", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, isOptimized: false, scopeLine: 1, file: !12, scope: !6, type: !7, function: i32 ()* @main, variables: !1)
!6 = !DIFile(filename: "PR13303.c", directory: "/home/probinson")
!7 = !DISubroutineType(types: !8)
!8 = !{!9}
!9 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DILocation(line: 1, column: 14, scope: !11)
!11 = distinct !DILexicalBlock(line: 1, column: 12, file: !12, scope: !5)
!12 = !DIFile(filename: "PR13303.c", directory: "/home/probinson")
!13 = !{i32 1, !"Debug Info Version", i32 3}
