--- ./sope-core/EOControl/EOKeyValueCoding.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EOKeyValueCoding.m	2013-10-09 17:03:32.000000000 +0100
@@ -1534,7 +1534,7 @@
 #if NeXT_RUNTIME
     sel = sel_getUid(buf);
 #else    
-    sel = sel_get_any_uid(buf);
+    sel = sel_registerName(buf);
 #endif
     if (buf) free(buf);
     
