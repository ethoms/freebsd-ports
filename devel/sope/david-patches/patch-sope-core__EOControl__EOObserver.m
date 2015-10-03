--- ./sope-core/EOControl/EOObserver.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EOObserver.m	2013-10-09 17:03:32.000000000 +0100
@@ -21,6 +21,10 @@
 
 #include "EOObserver.h"
 #include "common.h"
+#ifdef __GNUSTEP_RUNTIME__
+#define objc_malloc(x) malloc(x)
+#define objc_free(x) free(x)
+#endif
 
 // THREAD, MT
 
