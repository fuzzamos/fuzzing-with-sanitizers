


define <4 x double> @addpd256(<4 x double> %y, <4 x double> %x) nounwind uwtable readnone ssp {
entry:
  %add.i = fadd <4 x double> %x, %y
  ret <4 x double> %add.i
}


define <4 x double> @addpd256fold(<4 x double> %y) nounwind uwtable readnone ssp {
entry:
  %add.i = fadd <4 x double> %y, <double 4.500000e+00, double 3.400000e+00, double 2.300000e+00, double 1.200000e+00>
  ret <4 x double> %add.i
}


define <8 x float> @addps256(<8 x float> %y, <8 x float> %x) nounwind uwtable readnone ssp {
entry:
  %add.i = fadd <8 x float> %x, %y
  ret <8 x float> %add.i
}


define <8 x float> @addps256fold(<8 x float> %y) nounwind uwtable readnone ssp {
entry:
  %add.i = fadd <8 x float> %y, <float 4.500000e+00, float 0x400B333340000000, float 0x4002666660000000, float 0x3FF3333340000000, float 4.500000e+00, float 0x400B333340000000, float 0x4002666660000000, float 0x3FF3333340000000>
  ret <8 x float> %add.i
}


define <4 x double> @subpd256(<4 x double> %y, <4 x double> %x) nounwind uwtable readnone ssp {
entry:
  %sub.i = fsub <4 x double> %x, %y
  ret <4 x double> %sub.i
}


define <4 x double> @subpd256fold(<4 x double> %y, <4 x double>* nocapture %x) nounwind uwtable readonly ssp {
entry:
  %tmp2 = load <4 x double>, <4 x double>* %x, align 32
  %sub.i = fsub <4 x double> %y, %tmp2
  ret <4 x double> %sub.i
}


define <8 x float> @subps256(<8 x float> %y, <8 x float> %x) nounwind uwtable readnone ssp {
entry:
  %sub.i = fsub <8 x float> %x, %y
  ret <8 x float> %sub.i
}


define <8 x float> @subps256fold(<8 x float> %y, <8 x float>* nocapture %x) nounwind uwtable readonly ssp {
entry:
  %tmp2 = load <8 x float>, <8 x float>* %x, align 32
  %sub.i = fsub <8 x float> %y, %tmp2
  ret <8 x float> %sub.i
}


define <4 x double> @mulpd256(<4 x double> %y, <4 x double> %x) nounwind uwtable readnone ssp {
entry:
  %mul.i = fmul <4 x double> %x, %y
  ret <4 x double> %mul.i
}


define <4 x double> @mulpd256fold(<4 x double> %y) nounwind uwtable readnone ssp {
entry:
  %mul.i = fmul <4 x double> %y, <double 4.500000e+00, double 3.400000e+00, double 2.300000e+00, double 1.200000e+00>
  ret <4 x double> %mul.i
}


define <8 x float> @mulps256(<8 x float> %y, <8 x float> %x) nounwind uwtable readnone ssp {
entry:
  %mul.i = fmul <8 x float> %x, %y
  ret <8 x float> %mul.i
}


define <8 x float> @mulps256fold(<8 x float> %y) nounwind uwtable readnone ssp {
entry:
  %mul.i = fmul <8 x float> %y, <float 4.500000e+00, float 0x400B333340000000, float 0x4002666660000000, float 0x3FF3333340000000, float 4.500000e+00, float 0x400B333340000000, float 0x4002666660000000, float 0x3FF3333340000000>
  ret <8 x float> %mul.i
}


define <4 x double> @divpd256(<4 x double> %y, <4 x double> %x) nounwind uwtable readnone ssp {
entry:
  %div.i = fdiv <4 x double> %x, %y
  ret <4 x double> %div.i
}


define <4 x double> @divpd256fold(<4 x double> %y) nounwind uwtable readnone ssp {
entry:
  %div.i = fdiv <4 x double> %y, <double 4.500000e+00, double 3.400000e+00, double 2.300000e+00, double 1.200000e+00>
  ret <4 x double> %div.i
}


define <8 x float> @divps256(<8 x float> %y, <8 x float> %x) nounwind uwtable readnone ssp {
entry:
  %div.i = fdiv <8 x float> %x, %y
  ret <8 x float> %div.i
}


define <8 x float> @divps256fold(<8 x float> %y) nounwind uwtable readnone ssp {
entry:
  %div.i = fdiv <8 x float> %y, <float 4.500000e+00, float 0x400B333340000000, float 0x4002666660000000, float 0x3FF3333340000000, float 4.500000e+00, float 0x400B333340000000, float 0x4002666660000000, float 0x3FF3333340000000>
  ret <8 x float> %div.i
}


define float @sqrtA(float %a) nounwind uwtable readnone ssp {
entry:
  %conv1 = tail call float @sqrtf(float %a) nounwind readnone
  ret float %conv1
}

declare double @sqrt(double) readnone


define double @sqrtB(double %a) nounwind uwtable readnone ssp {
entry:
  %call = tail call double @sqrt(double %a) nounwind readnone
  ret double %call
}

declare float @sqrtf(float) readnone







define <4 x i64> @vpaddq(<4 x i64> %i, <4 x i64> %j) nounwind readnone {
  %x = add <4 x i64> %i, %j
  ret <4 x i64> %x
}






define <8 x i32> @vpaddd(<8 x i32> %i, <8 x i32> %j) nounwind readnone {
  %x = add <8 x i32> %i, %j
  ret <8 x i32> %x
}






define <16 x i16> @vpaddw(<16 x i16> %i, <16 x i16> %j) nounwind readnone {
  %x = add <16 x i16> %i, %j
  ret <16 x i16> %x
}






define <32 x i8> @vpaddb(<32 x i8> %i, <32 x i8> %j) nounwind readnone {
  %x = add <32 x i8> %i, %j
  ret <32 x i8> %x
}






define <4 x i64> @vpsubq(<4 x i64> %i, <4 x i64> %j) nounwind readnone {
  %x = sub <4 x i64> %i, %j
  ret <4 x i64> %x
}






define <8 x i32> @vpsubd(<8 x i32> %i, <8 x i32> %j) nounwind readnone {
  %x = sub <8 x i32> %i, %j
  ret <8 x i32> %x
}






define <16 x i16> @vpsubw(<16 x i16> %i, <16 x i16> %j) nounwind readnone {
  %x = sub <16 x i16> %i, %j
  ret <16 x i16> %x
}






define <32 x i8> @vpsubb(<32 x i8> %i, <32 x i8> %j) nounwind readnone {
  %x = sub <32 x i8> %i, %j
  ret <32 x i8> %x
}






define <8 x i32> @vpmulld(<8 x i32> %i, <8 x i32> %j) nounwind readnone {
  %x = mul <8 x i32> %i, %j
  ret <8 x i32> %x
}






define <16 x i16> @vpmullw(<16 x i16> %i, <16 x i16> %j) nounwind readnone {
  %x = mul <16 x i16> %i, %j
  ret <16 x i16> %x
}






















define <4 x i64> @mul-v4i64(<4 x i64> %i, <4 x i64> %j) nounwind readnone {
  %x = mul <4 x i64> %i, %j
  ret <4 x i64> %x
}

declare <4 x float> @llvm.x86.sse.sqrt.ss(<4 x float>) nounwind readnone

define <4 x float> @int_sqrt_ss() {


 %x0 = load float, float addrspace(1)* undef, align 8
 %x1 = insertelement <4 x float> undef, float %x0, i32 0
 %x2 = call <4 x float> @llvm.x86.sse.sqrt.ss(<4 x float> %x1) nounwind
 ret <4 x float> %x2
}
