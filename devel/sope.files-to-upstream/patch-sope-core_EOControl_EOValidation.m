--- ./sope-core/EOControl/EOValidation.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EOValidation.m	2013-10-09 17:03:32.000000000 +0100
@@ -153,7 +153,7 @@
 #if NeXT_RUNTIME
     sel = sel_getUid(buf);
 #else
-    sel = sel_get_any_uid(buf);
+    sel = sel_registerName(buf);
 #endif
     if (sel) {
       if ([self respondsToSelector:sel]) {
