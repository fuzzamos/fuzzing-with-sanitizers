


define void @blah(i16* %tmp10) {
entry:
	call void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend_stret to void (i16*)*)( i16*  sret %tmp10  )
	ret void
}

declare i8* @objc_msgSend_stret(i8*, i8*, ...)
