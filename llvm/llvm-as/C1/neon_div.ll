


define <8 x i8> @sdivi8(<8 x i8>* %A, <8 x i8>* %B) nounwind {





	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = sdiv <8 x i8> %tmp1, %tmp2
	ret <8 x i8> %tmp3
}

define <8 x i8> @udivi8(<8 x i8>* %A, <8 x i8>* %B) nounwind {







	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = udiv <8 x i8> %tmp1, %tmp2
	ret <8 x i8> %tmp3
}

define <4 x i16> @sdivi16(<4 x i16>* %A, <4 x i16>* %B) nounwind {



	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = sdiv <4 x i16> %tmp1, %tmp2
	ret <4 x i16> %tmp3
}

define <4 x i16> @udivi16(<4 x i16>* %A, <4 x i16>* %B) nounwind {




	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = udiv <4 x i16> %tmp1, %tmp2
	ret <4 x i16> %tmp3
}
