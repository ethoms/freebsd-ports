--- ./sope-core/EOControl/EOOrQualifier.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EOOrQualifier.m	2013-10-09 17:03:32.000000000 +0100
@@ -22,6 +22,12 @@
 #include <EOControl/EOQualifier.h>
 #include "common.h"
 
+#ifdef __GNUSTEP_RUNTIME__
+#define objc_calloc(x,y) calloc(x,y)
+#define objc_free(x) free(x)
+#endif
+
+
 @interface EOQualifier(EvalContext)
 - (BOOL)evaluateWithObject:(id)_object inEvalContext:(id)_ctx;
 @end
