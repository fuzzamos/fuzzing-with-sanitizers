


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"






define void @Store(i32* nocapture %p, i32 %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32* %p, i64 0, metadata !11, metadata !DIExpression()), !dbg !16
  tail call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !12, metadata !DIExpression()), !dbg !16
  store i32 %x, i32* %p, align 4, !dbg !17, !tbaa !18
  ret void, !dbg !22
}


declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind sanitize_memory "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.5.0 (204220)", isOptimized: true, emissionKind: 1, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../2.cc", directory: "/tmp/build0")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "Store", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: true, scopeLine: 1, file: !1, scope: !5, type: !6, function: void (i32*, i32)* @Store, variables: !10)
!5 = !DIFile(filename: "../2.cc", directory: "/tmp/build0")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8, !9}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 64, align: 64, baseType: !9)
!9 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !{!11, !12}
!11 = !DILocalVariable(name: "p", line: 1, arg: 1, scope: !4, file: !5, type: !8)
!12 = !DILocalVariable(name: "x", line: 1, arg: 2, scope: !4, file: !5, type: !9)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 1, !"Debug Info Version", i32 3}
!15 = !{!"clang version 3.5.0 (204220)"}
!16 = !DILocation(line: 1, scope: !4)
!17 = !DILocation(line: 2, scope: !4)
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 3, scope: !4)





















