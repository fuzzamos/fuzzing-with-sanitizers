















define void @check_adde_addc (i64 %AL, i64 %AH, i64 %BL, i64 %BH, i64* %RL, i64* %RH) {
entry:
        %tmp1 = zext i64 %AL to i128
        %tmp23 = zext i64 %AH to i128
        %tmp4 = shl i128 %tmp23, 64
        %tmp5 = or i128 %tmp4, %tmp1
        %tmp67 = zext i64 %BL to i128
        %tmp89 = zext i64 %BH to i128
        %tmp11 = shl i128 %tmp89, 64
        %tmp12 = or i128 %tmp11, %tmp67
        %tmp15 = add i128 %tmp12, %tmp5
        %tmp1617 = trunc i128 %tmp15 to i64
        store i64 %tmp1617, i64* %RL
        %tmp21 = lshr i128 %tmp15, 64
        %tmp2122 = trunc i128 %tmp21 to i64
        store i64 %tmp2122, i64* %RH
        ret void
}
