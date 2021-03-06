




	%struct.BITMAP = type { i16, i16, i32, i32, i32, i32, i32, i32, i8*, i8* }
	%struct.BltData = type { float, float, float, float }
	%struct.BltDepth = type { i32, i8**, i32, %struct.BITMAP* (%struct.BltDepth**, %struct.BITMAP*, i32, i32, float*, float, i32)*, i32 (%struct.BltDepth**, %struct.BltOp*)*, i32 (%struct.BltDepth**, %struct.BltOp*, %struct.BltImg*)*, i32 (%struct.BltDepth**, %struct.BltOp*, %struct.BltSh*)*, [28 x [2 x [2 x i32]]]*, %struct.BltData* }
	%struct.BltImg = type { i32, i8, i8, i8, float, float*, float*, i32, i32, float*, i32 (i8*, i8*, i8**, i32*, i8**, i32*)*, i8* }
	%struct.BltOp = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i8* }
	%struct.BltSh = type { i8, i8, i8, i8, float, float*, float*, float*, float*, i32, i32, float*, float*, float* }

define void @t(%struct.BltDepth* %depth, %struct.BltOp* %bop, i32 %mode) nounwind  {
entry:
	switch i32 %mode, label %return [
		 i32 1, label %bb2898.us
		 i32 18, label %bb13086.preheader
	]

bb13086.preheader:		
	%tmp13098 = icmp eq i32 0, 0		
	%tmp13238 = icmp eq i32 0, 0		
	br label %bb13088

bb2898.us:		
	br label %bb2898.us

bb13088:		
	br i1 %tmp13098, label %bb13107, label %bb13101

bb13101:		
	br label %bb13107

bb13107:		
	%iftmp.684.0 = phi i32 [ 0, %bb13101 ], [ 65535, %bb13088 ]		
	%tmp13111 = load i64, i64* null, align 8		
	%tmp13116 = lshr i64 %tmp13111, 16		
	%tmp1311613117 = trunc i64 %tmp13116 to i32		
	%tmp13118 = and i32 %tmp1311613117, 65535		
	%tmp13120 = lshr i64 %tmp13111, 32		
	%tmp1312013121 = trunc i64 %tmp13120 to i32		
	%tmp13122 = and i32 %tmp1312013121, 65535		
	%tmp13124 = lshr i64 %tmp13111, 48		
	%tmp1312413125 = trunc i64 %tmp13124 to i32		
	%tmp1314013141not = xor i16 0, -1		
	%tmp1314013141not13142 = zext i16 %tmp1314013141not to i32		
	%tmp13151 = mul i32 %tmp13122, %tmp1314013141not13142		
	%tmp13154 = mul i32 %tmp1312413125, %tmp1314013141not13142		
	%tmp13157 = mul i32 %iftmp.684.0, %tmp1314013141not13142		
	%tmp13171 = add i32 %tmp13151, 1		
	%tmp13172 = add i32 %tmp13171, 0		
	%tmp13176 = add i32 %tmp13154, 1		
	%tmp13177 = add i32 %tmp13176, 0		
	%tmp13181 = add i32 %tmp13157, 1		
	%tmp13182 = add i32 %tmp13181, 0		
	%tmp13188 = lshr i32 %tmp13172, 16		
	%tmp13190 = lshr i32 %tmp13177, 16		
	%tmp13192 = lshr i32 %tmp13182, 16		
	%tmp13198 = sub i32 %tmp13118, 0		
	%tmp13201 = sub i32 %tmp13122, %tmp13188		
	%tmp13204 = sub i32 %tmp1312413125, %tmp13190		
	%tmp13207 = sub i32 %iftmp.684.0, %tmp13192		
	%tmp1320813209 = zext i32 %tmp13204 to i64		
	%tmp13211 = shl i64 %tmp1320813209, 48		
	%tmp1321213213 = zext i32 %tmp13201 to i64		
	%tmp13214 = shl i64 %tmp1321213213, 32		
	%tmp13215 = and i64 %tmp13214, 281470681743360		
	%tmp1321713218 = zext i32 %tmp13198 to i64		
	%tmp13219 = shl i64 %tmp1321713218, 16		
	%tmp13220 = and i64 %tmp13219, 4294901760		
	%tmp13216 = or i64 %tmp13211, 0		
	%tmp13221 = or i64 %tmp13216, %tmp13215		
	%tmp13225 = or i64 %tmp13221, %tmp13220		
	%tmp1322713228 = trunc i32 %tmp13207 to i16		
	%tmp13233 = icmp eq i16 %tmp1322713228, 0		
	br i1 %tmp13233, label %bb13088, label %bb13236

bb13236:		
	br i1 false, label %bb13567, label %bb13252

bb13252:		
	%tmp1329013291 = zext i16 %tmp1322713228 to i64		
	%tmp13296 = lshr i64 %tmp13225, 16		
	%tmp13297 = and i64 %tmp13296, 65535		
	%tmp13299 = lshr i64 %tmp13225, 32		
	%tmp13300 = and i64 %tmp13299, 65535		
	%tmp13302 = lshr i64 %tmp13225, 48		
	%tmp13306 = sub i64 %tmp1329013291, 0		
	%tmp13309 = sub i64 %tmp1329013291, %tmp13297		
	%tmp13312 = sub i64 %tmp1329013291, %tmp13300		
	%tmp13315 = sub i64 %tmp1329013291, %tmp13302		
	%tmp13318 = mul i64 %tmp1329013291, %tmp1329013291		
	br i1 false, label %bb13339, label %bb13324

bb13324:		
	br i1 false, label %bb13339, label %bb13330

bb13330:		
	%tmp13337 = sdiv i64 0, 0		
	br label %bb13339

bb13339:		
	%r0120.0 = phi i64 [ %tmp13337, %bb13330 ], [ 0, %bb13252 ], [ 4294836225, %bb13324 ]		
	br i1 false, label %bb13360, label %bb13345

bb13345:		
	br i1 false, label %bb13360, label %bb13351

bb13351:		
	%tmp13354 = mul i64 0, %tmp13318		
	%tmp13357 = sub i64 %tmp1329013291, %tmp13309		
	%tmp13358 = sdiv i64 %tmp13354, %tmp13357		
	br label %bb13360

bb13360:		
	%r1121.0 = phi i64 [ %tmp13358, %bb13351 ], [ 0, %bb13339 ], [ 4294836225, %bb13345 ]		
	br i1 false, label %bb13402, label %bb13387

bb13387:		
	br label %bb13402

bb13402:		
	%r3123.0 = phi i64 [ 0, %bb13360 ], [ 4294836225, %bb13387 ]		
	%tmp13404 = icmp eq i16 %tmp1322713228, -1		
	br i1 %tmp13404, label %bb13435, label %bb13407

bb13407:		
	br label %bb13435

bb13435:		
	%r0120.1 = phi i64 [ 0, %bb13407 ], [ %r0120.0, %bb13402 ]		
	%r1121.1 = phi i64 [ 0, %bb13407 ], [ %r1121.0, %bb13402 ]		
	%r3123.1 = phi i64 [ 0, %bb13407 ], [ %r3123.0, %bb13402 ]		
	%tmp13450 = mul i64 0, %tmp13312		
	%tmp13455 = mul i64 0, %tmp13315		
	%tmp13461 = add i64 0, %tmp1329013291		
	%tmp13462 = mul i64 %tmp13461, 65535		
	%tmp13466 = sub i64 %tmp13462, 0		
	%tmp13526 = add i64 %tmp13466, 1		
	%tmp13527 = add i64 %tmp13526, 0		
	%tmp13528 = ashr i64 %tmp13527, 16		
	%tmp13536 = sub i64 %tmp13528, 0		
	%tmp13537 = shl i64 %tmp13536, 32		
	%tmp13538 = and i64 %tmp13537, 281470681743360		
	%tmp13542 = sub i64 %tmp13528, 0		
	%tmp13543 = shl i64 %tmp13542, 16		
	%tmp13544 = and i64 %tmp13543, 4294901760		
	%tmp13548 = sub i64 %tmp13528, 0		
	%tmp13549 = and i64 %tmp13548, 65535		
	%tmp13539 = or i64 %tmp13538, 0		
	%tmp13545 = or i64 %tmp13539, %tmp13549		
	%tmp13550 = or i64 %tmp13545, %tmp13544		
	%tmp1355213553 = trunc i64 %tmp13528 to i16		
	br label %bb13567

bb13567:		
	%tsp1040.0.0 = phi i64 [ %tmp13550, %bb13435 ], [ %tmp13225, %bb13236 ]		
	%tsp1040.1.0 = phi i16 [ %tmp1355213553, %bb13435 ], [ %tmp1322713228, %bb13236 ]		
	br i1 %tmp13238, label %bb13088, label %bb13572

bb13572:		
	store i16 %tsp1040.1.0, i16* null, align 2
	br label %bb13088

return:		
	ret void
}
