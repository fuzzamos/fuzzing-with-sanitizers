



define <8 x i8> @load_factor2(<16 x i8>* %ptr) {
  %wide.vec = load <16 x i8>, <16 x i8>* %ptr, align 4
  %strided.v0 = shufflevector <16 x i8> %wide.vec, <16 x i8> undef, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.v1 = shufflevector <16 x i8> %wide.vec, <16 x i8> undef, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %add = add nsw <8 x i8> %strided.v0, %strided.v1
  ret <8 x i8> %add
}



define <2 x i32> @load_factor3(i32* %ptr) {
  %base = bitcast i32* %ptr to <6 x i32>*
  %wide.vec = load <6 x i32>, <6 x i32>* %base, align 4
  %strided.v2 = shufflevector <6 x i32> %wide.vec, <6 x i32> undef, <2 x i32> <i32 2, i32 5>
  %strided.v1 = shufflevector <6 x i32> %wide.vec, <6 x i32> undef, <2 x i32> <i32 1, i32 4>
  %add = add nsw <2 x i32> %strided.v2, %strided.v1
  ret <2 x i32> %add
}




define <4 x i32> @load_factor4(i32* %ptr) {
  %base = bitcast i32* %ptr to <16 x i32>*
  %wide.vec = load <16 x i32>, <16 x i32>* %base, align 4
  %strided.v0 = shufflevector <16 x i32> %wide.vec, <16 x i32> undef, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.v2 = shufflevector <16 x i32> %wide.vec, <16 x i32> undef, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %add = add nsw <4 x i32> %strided.v0, %strided.v2
  ret <4 x i32> %add
}



define void @store_factor2(<16 x i8>* %ptr, <8 x i8> %v0, <8 x i8> %v1) {
  %interleaved.vec = shufflevector <8 x i8> %v0, <8 x i8> %v1, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, <16 x i8>* %ptr, align 4
  ret void
}




define void @store_factor3(i32* %ptr, <4 x i32> %v0, <4 x i32> %v1, <4 x i32> %v2) {
  %base = bitcast i32* %ptr to <12 x i32>*
  %v0_v1 = shufflevector <4 x i32> %v0, <4 x i32> %v1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %v2_u = shufflevector <4 x i32> %v2, <4 x i32> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec = shufflevector <8 x i32> %v0_v1, <8 x i32> %v2_u, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i32> %interleaved.vec, <12 x i32>* %base, align 4
  ret void
}




define void @store_factor4(i32* %ptr, <4 x i32> %v0, <4 x i32> %v1, <4 x i32> %v2, <4 x i32> %v3) {
  %base = bitcast i32* %ptr to <16 x i32>*
  %v0_v1 = shufflevector <4 x i32> %v0, <4 x i32> %v1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %v2_v3 = shufflevector <4 x i32> %v2, <4 x i32> %v3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i32> %v0_v1, <8 x i32> %v2_v3, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i32> %interleaved.vec, <16 x i32>* %base, align 4
  ret void
}






define <2 x i32*> @load_ptrvec_factor2(i32** %ptr) {
  %base = bitcast i32** %ptr to <4 x i32*>*
  %wide.vec = load <4 x i32*>, <4 x i32*>* %base, align 4
  %strided.v0 = shufflevector <4 x i32*> %wide.vec, <4 x i32*> undef, <2 x i32> <i32 0, i32 2>
  ret <2 x i32*> %strided.v0
}



define void @load_ptrvec_factor3(i32** %ptr, <2 x i32*>* %ptr1, <2 x i32*>* %ptr2) {
  %base = bitcast i32** %ptr to <6 x i32*>*
  %wide.vec = load <6 x i32*>, <6 x i32*>* %base, align 4
  %strided.v2 = shufflevector <6 x i32*> %wide.vec, <6 x i32*> undef, <2 x i32> <i32 2, i32 5>
  store <2 x i32*> %strided.v2, <2 x i32*>* %ptr1
  %strided.v1 = shufflevector <6 x i32*> %wide.vec, <6 x i32*> undef, <2 x i32> <i32 1, i32 4>
  store <2 x i32*> %strided.v1, <2 x i32*>* %ptr2
  ret void
}



define void @load_ptrvec_factor4(i32** %ptr, <2 x i32*>* %ptr1, <2 x i32*>* %ptr2) {
  %base = bitcast i32** %ptr to <8 x i32*>*
  %wide.vec = load <8 x i32*>, <8 x i32*>* %base, align 4
  %strided.v1 = shufflevector <8 x i32*> %wide.vec, <8 x i32*> undef, <2 x i32> <i32 1, i32 5>
  %strided.v3 = shufflevector <8 x i32*> %wide.vec, <8 x i32*> undef, <2 x i32> <i32 3, i32 7>
  store <2 x i32*> %strided.v1, <2 x i32*>* %ptr1
  store <2 x i32*> %strided.v3, <2 x i32*>* %ptr2
  ret void
}



define void @store_ptrvec_factor2(i32** %ptr, <2 x i32*> %v0, <2 x i32*> %v1) {
  %base = bitcast i32** %ptr to <4 x i32*>*
  %interleaved.vec = shufflevector <2 x i32*> %v0, <2 x i32*> %v1, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32*> %interleaved.vec, <4 x i32*>* %base, align 4
  ret void
}



define void @store_ptrvec_factor3(i32** %ptr, <2 x i32*> %v0, <2 x i32*> %v1, <2 x i32*> %v2) {
  %base = bitcast i32** %ptr to <6 x i32*>*
  %v0_v1 = shufflevector <2 x i32*> %v0, <2 x i32*> %v1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %v2_u = shufflevector <2 x i32*> %v2, <2 x i32*> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %interleaved.vec = shufflevector <4 x i32*> %v0_v1, <4 x i32*> %v2_u, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x i32*> %interleaved.vec, <6 x i32*>* %base, align 4
  ret void
}



define void @store_ptrvec_factor4(i32* %ptr, <2 x i32*> %v0, <2 x i32*> %v1, <2 x i32*> %v2, <2 x i32*> %v3) {
  %base = bitcast i32* %ptr to <8 x i32*>*
  %v0_v1 = shufflevector <2 x i32*> %v0, <2 x i32*> %v1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %v2_v3 = shufflevector <2 x i32*> %v2, <2 x i32*> %v3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x i32*> %v0_v1, <4 x i32*> %v2_v3, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x i32*> %interleaved.vec, <8 x i32*>* %base, align 4
  ret void
}






define <4 x i32> @load_undef_mask_factor2(i32* %ptr) {
  %base = bitcast i32* %ptr to <8 x i32>*
  %wide.vec = load <8 x i32>, <8 x i32>* %base, align 4
  %strided.v0 = shufflevector <8 x i32> %wide.vec, <8 x i32> undef, <4 x i32> <i32 undef, i32 2, i32 undef, i32 6>
  %strided.v1 = shufflevector <8 x i32> %wide.vec, <8 x i32> undef, <4 x i32> <i32 undef, i32 3, i32 undef, i32 7>
  %add = add nsw <4 x i32> %strided.v0, %strided.v1
  ret <4 x i32> %add
}




define <4 x i32> @load_undef_mask_factor3(i32* %ptr) {
  %base = bitcast i32* %ptr to <12 x i32>*
  %wide.vec = load <12 x i32>, <12 x i32>* %base, align 4
  %strided.v2 = shufflevector <12 x i32> %wide.vec, <12 x i32> undef, <4 x i32> <i32 2, i32 undef, i32 undef, i32 undef>
  %strided.v1 = shufflevector <12 x i32> %wide.vec, <12 x i32> undef, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %add = add nsw <4 x i32> %strided.v2, %strided.v1
  ret <4 x i32> %add
}




define <4 x i32> @load_undef_mask_factor4(i32* %ptr) {
  %base = bitcast i32* %ptr to <16 x i32>*
  %wide.vec = load <16 x i32>, <16 x i32>* %base, align 4
  %strided.v0 = shufflevector <16 x i32> %wide.vec, <16 x i32> undef, <4 x i32> <i32 0, i32 4, i32 undef, i32 undef>
  %strided.v2 = shufflevector <16 x i32> %wide.vec, <16 x i32> undef, <4 x i32> <i32 2, i32 6, i32 undef, i32 undef>
  %add = add nsw <4 x i32> %strided.v0, %strided.v2
  ret <4 x i32> %add
}



define void @store_undef_mask_factor2(i32* %ptr, <4 x i32> %v0, <4 x i32> %v1) {
  %base = bitcast i32* %ptr to <8 x i32>*
  %interleaved.vec = shufflevector <4 x i32> %v0, <4 x i32> %v1, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec, <8 x i32>* %base, align 4
  ret void
}




define void @store_undef_mask_factor3(i32* %ptr, <4 x i32> %v0, <4 x i32> %v1, <4 x i32> %v2) {
  %base = bitcast i32* %ptr to <12 x i32>*
  %v0_v1 = shufflevector <4 x i32> %v0, <4 x i32> %v1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %v2_u = shufflevector <4 x i32> %v2, <4 x i32> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec = shufflevector <8 x i32> %v0_v1, <8 x i32> %v2_u, <12 x i32> <i32 0, i32 4, i32 undef, i32 1, i32 undef, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i32> %interleaved.vec, <12 x i32>* %base, align 4
  ret void
}




define void @store_undef_mask_factor4(i32* %ptr, <4 x i32> %v0, <4 x i32> %v1, <4 x i32> %v2, <4 x i32> %v3) {
  %base = bitcast i32* %ptr to <16 x i32>*
  %v0_v1 = shufflevector <4 x i32> %v0, <4 x i32> %v1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %v2_v3 = shufflevector <4 x i32> %v2, <4 x i32> %v3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i32> %v0_v1, <8 x i32> %v2_v3, <16 x i32> <i32 0, i32 4, i32 8, i32 undef, i32 undef, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i32> %interleaved.vec, <16 x i32>* %base, align 4
  ret void
}
