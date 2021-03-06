

define <2 x float> @frecps_2s(<2 x float>* %A, <2 x float>* %B) nounwind {


	%tmp1 = load <2 x float>, <2 x float>* %A
	%tmp2 = load <2 x float>, <2 x float>* %B
	%tmp3 = call <2 x float> @llvm.aarch64.neon.frecps.v2f32(<2 x float> %tmp1, <2 x float> %tmp2)
	ret <2 x float> %tmp3
}

define <4 x float> @frecps_4s(<4 x float>* %A, <4 x float>* %B) nounwind {


	%tmp1 = load <4 x float>, <4 x float>* %A
	%tmp2 = load <4 x float>, <4 x float>* %B
	%tmp3 = call <4 x float> @llvm.aarch64.neon.frecps.v4f32(<4 x float> %tmp1, <4 x float> %tmp2)
	ret <4 x float> %tmp3
}

define <2 x double> @frecps_2d(<2 x double>* %A, <2 x double>* %B) nounwind {


	%tmp1 = load <2 x double>, <2 x double>* %A
	%tmp2 = load <2 x double>, <2 x double>* %B
	%tmp3 = call <2 x double> @llvm.aarch64.neon.frecps.v2f64(<2 x double> %tmp1, <2 x double> %tmp2)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.aarch64.neon.frecps.v2f32(<2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.frecps.v4f32(<4 x float>, <4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.frecps.v2f64(<2 x double>, <2 x double>) nounwind readnone


define <2 x float> @frsqrts_2s(<2 x float>* %A, <2 x float>* %B) nounwind {


	%tmp1 = load <2 x float>, <2 x float>* %A
	%tmp2 = load <2 x float>, <2 x float>* %B
	%tmp3 = call <2 x float> @llvm.aarch64.neon.frsqrts.v2f32(<2 x float> %tmp1, <2 x float> %tmp2)
	ret <2 x float> %tmp3
}

define <4 x float> @frsqrts_4s(<4 x float>* %A, <4 x float>* %B) nounwind {


	%tmp1 = load <4 x float>, <4 x float>* %A
	%tmp2 = load <4 x float>, <4 x float>* %B
	%tmp3 = call <4 x float> @llvm.aarch64.neon.frsqrts.v4f32(<4 x float> %tmp1, <4 x float> %tmp2)
	ret <4 x float> %tmp3
}

define <2 x double> @frsqrts_2d(<2 x double>* %A, <2 x double>* %B) nounwind {


	%tmp1 = load <2 x double>, <2 x double>* %A
	%tmp2 = load <2 x double>, <2 x double>* %B
	%tmp3 = call <2 x double> @llvm.aarch64.neon.frsqrts.v2f64(<2 x double> %tmp1, <2 x double> %tmp2)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.aarch64.neon.frsqrts.v2f32(<2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.frsqrts.v4f32(<4 x float>, <4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.frsqrts.v2f64(<2 x double>, <2 x double>) nounwind readnone

define <2 x float> @frecpe_2s(<2 x float>* %A) nounwind {


	%tmp1 = load <2 x float>, <2 x float>* %A
	%tmp3 = call <2 x float> @llvm.aarch64.neon.frecpe.v2f32(<2 x float> %tmp1)
	ret <2 x float> %tmp3
}

define <4 x float> @frecpe_4s(<4 x float>* %A) nounwind {


	%tmp1 = load <4 x float>, <4 x float>* %A
	%tmp3 = call <4 x float> @llvm.aarch64.neon.frecpe.v4f32(<4 x float> %tmp1)
	ret <4 x float> %tmp3
}

define <2 x double> @frecpe_2d(<2 x double>* %A) nounwind {


	%tmp1 = load <2 x double>, <2 x double>* %A
	%tmp3 = call <2 x double> @llvm.aarch64.neon.frecpe.v2f64(<2 x double> %tmp1)
	ret <2 x double> %tmp3
}

define float @frecpe_s(float* %A) nounwind {


  %tmp1 = load float, float* %A
  %tmp3 = call float @llvm.aarch64.neon.frecpe.f32(float %tmp1)
  ret float %tmp3
}

define double @frecpe_d(double* %A) nounwind {


  %tmp1 = load double, double* %A
  %tmp3 = call double @llvm.aarch64.neon.frecpe.f64(double %tmp1)
  ret double %tmp3
}

declare <2 x float> @llvm.aarch64.neon.frecpe.v2f32(<2 x float>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.frecpe.v4f32(<4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.frecpe.v2f64(<2 x double>) nounwind readnone
declare float @llvm.aarch64.neon.frecpe.f32(float) nounwind readnone
declare double @llvm.aarch64.neon.frecpe.f64(double) nounwind readnone

define float @frecpx_s(float* %A) nounwind {


  %tmp1 = load float, float* %A
  %tmp3 = call float @llvm.aarch64.neon.frecpx.f32(float %tmp1)
  ret float %tmp3
}

define double @frecpx_d(double* %A) nounwind {


  %tmp1 = load double, double* %A
  %tmp3 = call double @llvm.aarch64.neon.frecpx.f64(double %tmp1)
  ret double %tmp3
}

declare float @llvm.aarch64.neon.frecpx.f32(float) nounwind readnone
declare double @llvm.aarch64.neon.frecpx.f64(double) nounwind readnone

define <2 x float> @frsqrte_2s(<2 x float>* %A) nounwind {


	%tmp1 = load <2 x float>, <2 x float>* %A
	%tmp3 = call <2 x float> @llvm.aarch64.neon.frsqrte.v2f32(<2 x float> %tmp1)
	ret <2 x float> %tmp3
}

define <4 x float> @frsqrte_4s(<4 x float>* %A) nounwind {


	%tmp1 = load <4 x float>, <4 x float>* %A
	%tmp3 = call <4 x float> @llvm.aarch64.neon.frsqrte.v4f32(<4 x float> %tmp1)
	ret <4 x float> %tmp3
}

define <2 x double> @frsqrte_2d(<2 x double>* %A) nounwind {


	%tmp1 = load <2 x double>, <2 x double>* %A
	%tmp3 = call <2 x double> @llvm.aarch64.neon.frsqrte.v2f64(<2 x double> %tmp1)
	ret <2 x double> %tmp3
}

define float @frsqrte_s(float* %A) nounwind {


  %tmp1 = load float, float* %A
  %tmp3 = call float @llvm.aarch64.neon.frsqrte.f32(float %tmp1)
  ret float %tmp3
}

define double @frsqrte_d(double* %A) nounwind {


  %tmp1 = load double, double* %A
  %tmp3 = call double @llvm.aarch64.neon.frsqrte.f64(double %tmp1)
  ret double %tmp3
}

declare <2 x float> @llvm.aarch64.neon.frsqrte.v2f32(<2 x float>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.frsqrte.v4f32(<4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.frsqrte.v2f64(<2 x double>) nounwind readnone
declare float @llvm.aarch64.neon.frsqrte.f32(float) nounwind readnone
declare double @llvm.aarch64.neon.frsqrte.f64(double) nounwind readnone

define <2 x i32> @urecpe_2s(<2 x i32>* %A) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp3 = call <2 x i32> @llvm.aarch64.neon.urecpe.v2i32(<2 x i32> %tmp1)
	ret <2 x i32> %tmp3
}

define <4 x i32> @urecpe_4s(<4 x i32>* %A) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp3 = call <4 x i32> @llvm.aarch64.neon.urecpe.v4i32(<4 x i32> %tmp1)
	ret <4 x i32> %tmp3
}

declare <2 x i32> @llvm.aarch64.neon.urecpe.v2i32(<2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.urecpe.v4i32(<4 x i32>) nounwind readnone

define <2 x i32> @ursqrte_2s(<2 x i32>* %A) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp3 = call <2 x i32> @llvm.aarch64.neon.ursqrte.v2i32(<2 x i32> %tmp1)
	ret <2 x i32> %tmp3
}

define <4 x i32> @ursqrte_4s(<4 x i32>* %A) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp3 = call <4 x i32> @llvm.aarch64.neon.ursqrte.v4i32(<4 x i32> %tmp1)
	ret <4 x i32> %tmp3
}

declare <2 x i32> @llvm.aarch64.neon.ursqrte.v2i32(<2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.ursqrte.v4i32(<4 x i32>) nounwind readnone

define float @f1(float %a, float %b) nounwind readnone optsize ssp {



  %vrsqrtss.i = tail call float @llvm.aarch64.neon.frsqrts.f32(float %a, float %b) nounwind
  ret float %vrsqrtss.i
}

define double @f2(double %a, double %b) nounwind readnone optsize ssp {



  %vrsqrtsd.i = tail call double @llvm.aarch64.neon.frsqrts.f64(double %a, double %b) nounwind
  ret double %vrsqrtsd.i
}

declare double @llvm.aarch64.neon.frsqrts.f64(double, double) nounwind readnone
declare float @llvm.aarch64.neon.frsqrts.f32(float, float) nounwind readnone
