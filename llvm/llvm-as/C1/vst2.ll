

define void @vst2i8(i8* %A, <8 x i8>* %B) nounwind {



	%tmp1 = load <8 x i8>, <8 x i8>* %B
	call void @llvm.arm.neon.vst2.v8i8(i8* %A, <8 x i8> %tmp1, <8 x i8> %tmp1, i32 8)
	ret void
}


define void @vst2i8_update(i8** %ptr, <8 x i8>* %B, i32 %inc) nounwind {


	%A = load i8*, i8** %ptr
	%tmp1 = load <8 x i8>, <8 x i8>* %B
	call void @llvm.arm.neon.vst2.v8i8(i8* %A, <8 x i8> %tmp1, <8 x i8> %tmp1, i32 4)
	%tmp2 = getelementptr i8, i8* %A, i32 %inc
	store i8* %tmp2, i8** %ptr
	ret void
}

define void @vst2i16(i16* %A, <4 x i16>* %B) nounwind {



	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <4 x i16>, <4 x i16>* %B
	call void @llvm.arm.neon.vst2.v4i16(i8* %tmp0, <4 x i16> %tmp1, <4 x i16> %tmp1, i32 32)
	ret void
}

define void @vst2i32(i32* %A, <2 x i32>* %B) nounwind {


	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <2 x i32>, <2 x i32>* %B
	call void @llvm.arm.neon.vst2.v2i32(i8* %tmp0, <2 x i32> %tmp1, <2 x i32> %tmp1, i32 1)
	ret void
}

define void @vst2f(float* %A, <2 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <2 x float>, <2 x float>* %B
	call void @llvm.arm.neon.vst2.v2f32(i8* %tmp0, <2 x float> %tmp1, <2 x float> %tmp1, i32 1)
	ret void
}

define void @vst2i64(i64* %A, <1 x i64>* %B) nounwind {



	%tmp0 = bitcast i64* %A to i8*
	%tmp1 = load <1 x i64>, <1 x i64>* %B
	call void @llvm.arm.neon.vst2.v1i64(i8* %tmp0, <1 x i64> %tmp1, <1 x i64> %tmp1, i32 32)
	ret void
}


define void @vst2i64_update(i64** %ptr, <1 x i64>* %B) nounwind {


	%A = load i64*, i64** %ptr
	%tmp0 = bitcast i64* %A to i8*
	%tmp1 = load <1 x i64>, <1 x i64>* %B
	call void @llvm.arm.neon.vst2.v1i64(i8* %tmp0, <1 x i64> %tmp1, <1 x i64> %tmp1, i32 8)
	%tmp2 = getelementptr i64, i64* %A, i32 2
	store i64* %tmp2, i64** %ptr
	ret void
}

define void @vst2Qi8(i8* %A, <16 x i8>* %B) nounwind {



	%tmp1 = load <16 x i8>, <16 x i8>* %B
	call void @llvm.arm.neon.vst2.v16i8(i8* %A, <16 x i8> %tmp1, <16 x i8> %tmp1, i32 8)
	ret void
}

define void @vst2Qi16(i16* %A, <8 x i16>* %B) nounwind {



	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <8 x i16>, <8 x i16>* %B
	call void @llvm.arm.neon.vst2.v8i16(i8* %tmp0, <8 x i16> %tmp1, <8 x i16> %tmp1, i32 16)
	ret void
}

define void @vst2Qi32(i32* %A, <4 x i32>* %B) nounwind {



	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <4 x i32>, <4 x i32>* %B
	call void @llvm.arm.neon.vst2.v4i32(i8* %tmp0, <4 x i32> %tmp1, <4 x i32> %tmp1, i32 64)
	ret void
}

define void @vst2Qf(float* %A, <4 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <4 x float>, <4 x float>* %B
	call void @llvm.arm.neon.vst2.v4f32(i8* %tmp0, <4 x float> %tmp1, <4 x float> %tmp1, i32 1)
	ret void
}

define i8* @vst2update(i8* %out, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %B
	tail call void @llvm.arm.neon.vst2.v4i16(i8* %out, <4 x i16> %tmp1, <4 x i16> %tmp1, i32 2)
	%t5 = getelementptr inbounds i8, i8* %out, i32 16
	ret i8* %t5
}

define i8* @vst2update2(i8 * %out, <4 x float> * %this) nounwind optsize ssp align 2 {


  %tmp1 = load <4 x float>, <4 x float>* %this
  call void @llvm.arm.neon.vst2.v4f32(i8* %out, <4 x float> %tmp1, <4 x float> %tmp1, i32 4) nounwind
  %tmp2 = getelementptr inbounds i8, i8* %out, i32  32
  ret i8* %tmp2
}

declare void @llvm.arm.neon.vst2.v8i8(i8*, <8 x i8>, <8 x i8>, i32) nounwind
declare void @llvm.arm.neon.vst2.v4i16(i8*, <4 x i16>, <4 x i16>, i32) nounwind
declare void @llvm.arm.neon.vst2.v2i32(i8*, <2 x i32>, <2 x i32>, i32) nounwind
declare void @llvm.arm.neon.vst2.v2f32(i8*, <2 x float>, <2 x float>, i32) nounwind
declare void @llvm.arm.neon.vst2.v1i64(i8*, <1 x i64>, <1 x i64>, i32) nounwind

declare void @llvm.arm.neon.vst2.v16i8(i8*, <16 x i8>, <16 x i8>, i32) nounwind
declare void @llvm.arm.neon.vst2.v8i16(i8*, <8 x i16>, <8 x i16>, i32) nounwind
declare void @llvm.arm.neon.vst2.v4i32(i8*, <4 x i32>, <4 x i32>, i32) nounwind
declare void @llvm.arm.neon.vst2.v4f32(i8*, <4 x float>, <4 x float>, i32) nounwind
