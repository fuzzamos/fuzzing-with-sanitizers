























%struct.foo = type { i8 }


define void @_ZN3foo2f1Ev(%struct.foo* %this) #0 align 2 {
entry:
  %this.addr = alloca %struct.foo*, align 8
  store %struct.foo* %this, %struct.foo** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.foo** %this.addr, metadata !16, metadata !DIExpression()), !dbg !18
  %this1 = load %struct.foo*, %struct.foo** %this.addr
  ret void, !dbg !19
}


declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !20}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.4 ", isOptimized: false, emissionKind: 0, file: !1, enums: !2, retainedTypes: !3, subprograms: !13, globals: !2, imports: !2)
!1 = !DIFile(filename: "member-order.cpp", directory: "/tmp/dbginfo")
!2 = !{}
!3 = !{!4}
!4 = !DICompositeType(tag: DW_TAG_structure_type, name: "foo", line: 1, size: 8, align: 8, file: !1, elements: !5, identifier: "_ZTS3foo")
!5 = !{!6, !11}
!6 = !DISubprogram(name: "f1", linkageName: "_ZN3foo2f1Ev", line: 2, isLocal: false, isDefinition: false, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 2, file: !1, scope: !4, type: !7)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer, baseType: !"_ZTS3foo")
!10 = !{i32 786468}
!11 = !DISubprogram(name: "f2", linkageName: "_ZN3foo2f2Ev", line: 3, isLocal: false, isDefinition: false, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 3, file: !1, scope: !4, type: !7)
!12 = !{i32 786468}
!13 = !{!14}
!14 = distinct !DISubprogram(name: "f1", linkageName: "_ZN3foo2f1Ev", line: 6, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 6, file: !1, scope: null, type: !7, function: void (%struct.foo*)* @_ZN3foo2f1Ev, declaration: !6, variables: !2)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !DILocalVariable(name: "this", arg: 1, flags: DIFlagArtificial | DIFlagObjectPointer, scope: !14, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 64, align: 64, baseType: !"_ZTS3foo")
!18 = !DILocation(line: 0, scope: !14)
!19 = !DILocation(line: 7, scope: !14)
!20 = !{i32 1, !"Debug Info Version", i32 3}
