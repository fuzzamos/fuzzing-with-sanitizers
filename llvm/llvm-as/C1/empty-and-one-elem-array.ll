



%struct.foo = type { i32, [1 x i32] }
%struct.bar = type { i32, [0 x i32] }

define i32 @func() nounwind uwtable ssp {
entry:
  %my_foo = alloca %struct.foo, align 4
  %my_bar = alloca %struct.bar, align 4
  call void @llvm.dbg.declare(metadata %struct.foo* %my_foo, metadata !10, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata %struct.bar* %my_bar, metadata !20, metadata !DIExpression()), !dbg !28
  %a = getelementptr inbounds %struct.foo, %struct.foo* %my_foo, i32 0, i32 0, !dbg !29
  store i32 3, i32* %a, align 4, !dbg !29
  %a1 = getelementptr inbounds %struct.bar, %struct.bar* %my_bar, i32 0, i32 0, !dbg !30
  store i32 5, i32* %a1, align 4, !dbg !30
  %a2 = getelementptr inbounds %struct.foo, %struct.foo* %my_foo, i32 0, i32 0, !dbg !31
  %0 = load i32, i32* %a2, align 4, !dbg !31
  %a3 = getelementptr inbounds %struct.bar, %struct.bar* %my_bar, i32 0, i32 0, !dbg !31
  %1 = load i32, i32* %a3, align 4, !dbg !31
  %add = add nsw i32 %0, %1, !dbg !31
  ret i32 %add, !dbg !31
}

declare void @llvm.dbg.declare(metadata, metadata, metadata) nounwind readnone




































!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.3 (trunk 169136)", isOptimized: false, emissionKind: 0, file: !32, enums: !1, retainedTypes: !1, subprograms: !3, globals: !1, imports:  !1)
!1 = !{}
!3 = !{!5}
!5 = distinct !DISubprogram(name: "func", line: 11, isLocal: false, isDefinition: true, virtualIndex: 6, isOptimized: false, scopeLine: 11, file: !6, scope: !6, type: !7, function: i32 ()* @func, variables: !1)
!6 = !DIFile(filename: "test.c", directory: "/Volumes/Sandbox/llvm")
!7 = !DISubroutineType(types: !8)
!8 = !{!9}
!9 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DILocalVariable(name: "my_foo", line: 12, scope: !11, file: !6, type: !12)
!11 = distinct !DILexicalBlock(line: 11, column: 0, file: !6, scope: !5)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "foo", line: 1, size: 64, align: 32, file: !32, elements: !13)
!13 = !{!14, !15}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "a", line: 2, size: 32, align: 32, file: !32, scope: !12, baseType: !9)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "b", line: 3, size: 32, align: 32, offset: 32, file: !32, scope: !12, baseType: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, size: 32, align: 32, baseType: !9, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 1)
!19 = !DILocation(line: 12, scope: !11)
!20 = !DILocalVariable(name: "my_bar", line: 13, scope: !11, file: !6, type: !21)
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "bar", line: 6, size: 32, align: 32, file: !32, elements: !22)
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "a", line: 7, size: 32, align: 32, file: !32, scope: !21, baseType: !9)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "b", line: 8, align: 32, offset: 32, file: !32, scope: !21, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, align: 32, baseType: !9, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 0)
!28 = !DILocation(line: 13, scope: !11)
!29 = !DILocation(line: 15, scope: !11)
!30 = !DILocation(line: 16, scope: !11)
!31 = !DILocation(line: 17, scope: !11)
!32 = !DIFile(filename: "test.c", directory: "/Volumes/Sandbox/llvm")
!33 = !{i32 1, !"Debug Info Version", i32 3}
