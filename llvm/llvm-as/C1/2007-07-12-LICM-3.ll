

define i32 @main(i32 %argc, i8** %argv) {
entry:
        br label %bb

bb:             
        br label %bb7

bb7:            
        %tmp39 = load <4 x float>, <4 x float>* null         
        %tmp40 = fadd <4 x float> %tmp39, < float 2.000000e+00, float 3.000000e+00, float 1.000000e+00, float 0.000000e+00 >             
        %tmp43 = fadd <4 x float> %tmp40, < float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 2.000000e+00 >             
        %tmp46 = fadd <4 x float> %tmp43, < float 3.000000e+00, float 0.000000e+00, float 2.000000e+00, float 4.000000e+00 >             
        %tmp49 = fadd <4 x float> %tmp46, < float 0.000000e+00, float 4.000000e+00, float 6.000000e+00, float 1.000000e+00 >             
        store <4 x float> %tmp49, <4 x float>* null
        br i1 false, label %bb7, label %bb56

bb56:           
        br i1 false, label %bb, label %bb64

bb64:           
        ret i32 0
}
