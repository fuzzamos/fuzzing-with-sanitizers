











global i64 u0x00001     
global i64  s0x0012312   

@t2 = global i32* @t1                             
@t3 = global i32* bitcast (i32* @t1 to i32*)       
@t1 = global i32 4                                
@t4 = global i32** bitcast (i32** @t3 to i32**)     
@t5 = global i32** @t3                           
@t6 = global i32*** @t4                           
@t7 = global float* inttoptr (i32 12345678 to float*) 
@t9 = global i32 bitcast (float bitcast (i32 8 to float) to i32) 

global i32* bitcast (float* @4 to i32*)   
global float* @4                       
global float 0.0






@array  = constant [2 x i32] [ i32 12, i32 52 ]
@arrayPtr = global i32* getelementptr ([2 x i32], [2 x i32]* @array, i64 0, i64 0)    
@arrayPtr5 = global i32** getelementptr (i32*, i32** @arrayPtr, i64 5)    

@somestr = constant [11x i8] c"hello world"
@char5  = global i8* getelementptr([11x i8], [11x i8]* @somestr, i64 0, i64 5)


@char8a = global i32* bitcast (i8* getelementptr([11x i8], [11x i8]* @somestr, i64 0, i64 8) to i32*)


@char8b = global i8* getelementptr([11x i8], [11x i8]* @somestr, i64 sext (i8 0 to i64), i64 sext (i8 8 to i64))





%SType  = type { i32 , {float, {i8} }, i64 } 
%SAType = type { i32 , {[2x float], i64} } 

@S1 = global %SType* null			
@S2c = constant %SType { i32 1, {float,{i8}} {float 2.0, {i8} {i8 3}}, i64 4}

@S3c = constant %SAType { i32 1, {[2x float], i64} {[2x float] [float 2.0, float 3.0], i64 4} }

@S1ptr = global %SType** @S1		    
@S2  = global %SType* @S2c		    
@S3  = global %SAType* @S3c		    

					    
@S1fld1a = global float* getelementptr (%SType, %SType* @S2c, i64 0, i32 1, i32 0)
					    
@S1fld1b = global float* getelementptr (%SType, %SType* @S2c, i64 0, i32 1, i32 0)

@S1fld1bptr = global float** @S1fld1b	    

					    
@S2fld3 = global i8* getelementptr (%SType, %SType* @S2c, i64 0, i32 1, i32 1, i32 0) 

					    







