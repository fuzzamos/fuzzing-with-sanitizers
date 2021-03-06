















target datalayout = "e-p:32:32:32-i64:64:64-i32:32:32-i16:16:16-i1:32:32-f64:64:64-f32:32:32-v64:64:64-v32:32:32-a0:0-n16:32"
target triple = "hexagon"

define i64 @foo(i16 zeroext %filtMemLen, i16* %filtMemLR, i16 signext %filtMemIndex) nounwind {
entry:
  %conv = zext i16 %filtMemLen to i32
  %shr2 = lshr i32 %conv, 1
  %idxprom = sext i16 %filtMemIndex to i32
  %arrayidx = getelementptr inbounds i16, i16* %filtMemLR, i32 %idxprom
  %0 = bitcast i16* %arrayidx to i8*
  %sub = sub i32 13, %shr2
  %shl = shl i32 1, %sub

  %1 = tail call i8* @llvm.hexagon.brev.std(i8* %0, i64 undef, i32 %shl)
  %2 = bitcast i8* %1 to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !0
  ret i64 %3
}

declare i8* @llvm.hexagon.brev.std(i8*, i64, i32) nounwind

define i32 @foo1(i16 zeroext %filtMemLen, i16* %filtMemLR, i16 signext %filtMemIndex) nounwind {
entry:
  %conv = zext i16 %filtMemLen to i32
  %shr1 = lshr i32 %conv, 1
  %idxprom = sext i16 %filtMemIndex to i32
  %arrayidx = getelementptr inbounds i16, i16* %filtMemLR, i32 %idxprom
  %0 = bitcast i16* %arrayidx to i8*
  %sub = sub i32 14, %shr1
  %shl = shl i32 1, %sub

  %1 = tail call i8* @llvm.hexagon.brev.stw(i8* %0, i32 undef, i32 %shl)
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !2
  ret i32 %3
}

declare i8* @llvm.hexagon.brev.stw(i8*, i32, i32) nounwind

define signext i16 @foo2(i16 zeroext %filtMemLen, i16* %filtMemLR, i16 signext %filtMemIndex) nounwind {
entry:
  %conv = zext i16 %filtMemLen to i32
  %shr2 = lshr i32 %conv, 1
  %idxprom = sext i16 %filtMemIndex to i32
  %arrayidx = getelementptr inbounds i16, i16* %filtMemLR, i32 %idxprom
  %0 = bitcast i16* %arrayidx to i8*
  %sub = sub i32 15, %shr2
  %shl = shl i32 1, %sub

  %1 = tail call i8* @llvm.hexagon.brev.sth(i8* %0, i32 0, i32 %shl)
  %2 = bitcast i8* %1 to i16*
  %3 = load i16, i16* %2, align 2, !tbaa !3
  ret i16 %3
}

declare i8* @llvm.hexagon.brev.sth(i8*, i32, i32) nounwind

define signext i16 @foo3(i16 zeroext %filtMemLen, i16* %filtMemLR, i16 signext %filtMemIndex) nounwind {
entry:
  %conv = zext i16 %filtMemLen to i32
  %shr2 = lshr i32 %conv, 1
  %idxprom = sext i16 %filtMemIndex to i32
  %arrayidx = getelementptr inbounds i16, i16* %filtMemLR, i32 %idxprom
  %0 = bitcast i16* %arrayidx to i8*
  %sub = sub i32 15, %shr2
  %shl = shl i32 1, %sub

  %1 = tail call i8* @llvm.hexagon.brev.sthhi(i8* %0, i32 0, i32 %shl)
  %2 = bitcast i8* %1 to i16*
  %3 = load i16, i16* %2, align 2, !tbaa !3
  ret i16 %3
}

declare i8* @llvm.hexagon.brev.sthhi(i8*, i32, i32) nounwind

define zeroext i8 @foo5(i16 zeroext %filtMemLen, i16* %filtMemLR, i16 signext %filtMemIndex) nounwind {
entry:
  %conv = zext i16 %filtMemLen to i32
  %shr2 = lshr i32 %conv, 1
  %idxprom = sext i16 %filtMemIndex to i32
  %arrayidx = getelementptr inbounds i16, i16* %filtMemLR, i32 %idxprom
  %0 = bitcast i16* %arrayidx to i8*
  %sub = sub nsw i32 16, %shr2
  
  %shl = shl i32 1, %sub
  %1 = tail call i8* @llvm.hexagon.brev.stb(i8* %0, i32 0, i32 %shl)
  %2 = load i8, i8* %1, align 1, !tbaa !0
  ret i8 %2
}

declare i8* @llvm.hexagon.brev.stb(i8*, i32, i32) nounwind

!0 = !{!"omnipotent char", !1}
!1 = !{!"Simple C/C++ TBAA"}
!2 = !{!"int", !0}
!3 = !{!"short", !0}
