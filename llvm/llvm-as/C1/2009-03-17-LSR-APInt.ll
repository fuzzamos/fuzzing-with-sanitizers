


	%struct..0__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_list_t }
	%struct.Alignment = type { i32 }
	%struct.QDesignerFormWindowInterface = type { %struct.QWidget }
	%struct.QFont = type { %struct.QFontPrivate*, i32 }
	%struct.QFontPrivate = type opaque
	%"struct.QHash<QString,QList<QAbstractExtensionFactory*> >" = type { %"struct.QHash<QString,QList<QAbstractExtensionFactory*> >::._120" }
	%"struct.QHash<QString,QList<QAbstractExtensionFactory*> >::._120" = type { %struct.QHashData* }
	%struct.QHashData = type { %"struct.QHashData::Node"*, %"struct.QHashData::Node"**, %struct.Alignment, i32, i32, i16, i16, i32, i8 }
	%"struct.QHashData::Node" = type { %"struct.QHashData::Node"*, i32 }
	%"struct.QList<QAbstractExtensionFactory*>" = type { %"struct.QList<QAbstractExtensionFactory*>::._101" }
	%"struct.QList<QAbstractExtensionFactory*>::._101" = type { %struct.QListData }
	%struct.QListData = type { %"struct.QListData::Data"* }
	%"struct.QListData::Data" = type { %struct.Alignment, i32, i32, i32, i8, [1 x i8*] }
	%struct.QObject = type { i32 (...)**, %struct.QObjectData* }
	%struct.QObjectData = type { i32 (...)**, %struct.QObject*, %struct.QObject*, %"struct.QList<QAbstractExtensionFactory*>", i32, i32 }
	%struct.QPaintDevice.base = type { i32 (...)**, i16 }
	%"struct.QPair<int,int>" = type { i32, i32 }
	%struct.QPalette = type { %struct.QPalettePrivate*, i32 }
	%struct.QPalettePrivate = type opaque
	%struct.QRect = type { i32, i32, i32, i32 }
	%struct.QWidget = type { %struct.QObject, %struct.QPaintDevice.base, %struct.QWidgetData* }
	%struct.QWidgetData = type { i64, i32, %struct.Alignment, i8, i8, i16, %struct.QRect, %struct.QPalette, %struct.QFont, %struct.QRect }
	%struct.__pthread_list_t = type { %struct.__pthread_list_t*, %struct.__pthread_list_t* }
	%struct.pthread_attr_t = type { i64, [48 x i8] }
	%struct.pthread_mutex_t = type { %struct..0__pthread_mutex_s }
	%"struct.qdesigner_internal::Grid" = type { i32, i32, %struct.QWidget**, i8*, i8* }
	%"struct.qdesigner_internal::GridLayout" = type { %"struct.qdesigner_internal::Layout", %"struct.QPair<int,int>", %"struct.qdesigner_internal::Grid"* }
	%"struct.qdesigner_internal::Layout" = type { %struct.QObject, %"struct.QList<QAbstractExtensionFactory*>", %struct.QWidget*, %"struct.QHash<QString,QList<QAbstractExtensionFactory*> >", %struct.QWidget*, %struct.QDesignerFormWindowInterface*, i8, %"struct.QPair<int,int>", %struct.QRect, i8 }

@_ZL20__gthrw_pthread_oncePiPFvvE = weak alias i32 (i32*, void ()*)* @pthread_once		
@_ZL27__gthrw_pthread_getspecificj = weak alias i8* (i32)* @pthread_getspecific		
@_ZL27__gthrw_pthread_setspecificjPKv = weak alias i32 (i32, i8*)* @pthread_setspecific		
@_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_ = weak alias i32 (i64*, %struct.pthread_attr_t*, i8* (i8*)*, i8*)* @pthread_create		
@_ZL22__gthrw_pthread_cancelm = weak alias i32 (i64)* @pthread_cancel		
@_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t = weak alias i32 (%struct.pthread_mutex_t*)* @pthread_mutex_lock		
@_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t = weak alias i32 (%struct.pthread_mutex_t*)* @pthread_mutex_trylock		
@_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t = weak alias i32 (%struct.pthread_mutex_t*)* @pthread_mutex_unlock		
@_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t = weak alias i32 (%struct.pthread_mutex_t*, %struct.Alignment*)* @pthread_mutex_init		
@_ZL26__gthrw_pthread_key_createPjPFvPvE = weak alias i32 (i32*, void (i8*)*)* @pthread_key_create		
@_ZL26__gthrw_pthread_key_deletej = weak alias i32 (i32)* @pthread_key_delete		
@_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t = weak alias i32 (%struct.Alignment*)* @pthread_mutexattr_init		
@_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti = weak alias i32 (%struct.Alignment*, i32)* @pthread_mutexattr_settype		
@_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t = weak alias i32 (%struct.Alignment*)* @pthread_mutexattr_destroy		

define void @_ZN18qdesigner_internal10GridLayout9buildGridEv(%"struct.qdesigner_internal::GridLayout"* %this) nounwind {
entry:
	br label %bb44

bb44:		
	%indvar = phi i128 [ %indvar.next144, %bb47 ], [ 0, %entry ]		
	br i1 false, label %bb46, label %bb47

bb46:		
	%tmp = shl i128 %indvar, 64		
	%tmp96 = and i128 %tmp, 79228162495817593519834398720		
	br label %bb47

bb47:		
	%indvar.next144 = add i128 %indvar, 1		
	br label %bb44
}

define i32 @pthread_once(i32*, void ()*) {
  ret i32 0
}

define i8* @pthread_getspecific(i32) {
  ret i8* null
}

define i32 @pthread_setspecific(i32, i8*) {
  ret i32 0
}

define i32 @pthread_create(i64*, %struct.pthread_attr_t*, i8* (i8*)*, i8*) {
  ret i32 0
}

define i32 @pthread_cancel(i64) {
  ret i32 0
}

define i32 @pthread_mutex_lock(%struct.pthread_mutex_t*) {
  ret i32 0
}

define i32 @pthread_mutex_trylock(%struct.pthread_mutex_t*) {
  ret i32 0
}

define i32 @pthread_mutex_unlock(%struct.pthread_mutex_t*) {
  ret i32 0
}

define i32 @pthread_mutex_init(%struct.pthread_mutex_t*, %struct.Alignment*) {
  ret i32 0
}

define i32 @pthread_key_create(i32*, void (i8*)*) {
  ret i32 0
}

define i32 @pthread_key_delete(i32) {
  ret i32 0
}

define i32 @pthread_mutexattr_init(%struct.Alignment*) {
  ret i32 0
}

define i32 @pthread_mutexattr_settype(%struct.Alignment*, i32) {
  ret i32 0
}

define i32 @pthread_mutexattr_destroy(%struct.Alignment*) {
  ret i32 0
}
