--- ./sope-core/NGExtensions/EOExt.subproj/EOQualifier+CtxEval.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/EOExt.subproj/EOQualifier+CtxEval.m	2013-10-09 17:03:32.000000000 +0100
@@ -29,7 +29,7 @@
 #  import <objc/objc.h>
 #  import <extensions/objc-runtime.h>
 #elif GNUSTEP_BASE_LIBRARY
-#if __GNU_LIBOBJC__ >= 20100911
+#if (__GNU_LIBOBJC__ >= 20100911) || defined(__GNUSTEP_RUNTIME__)
 #  define sel_get_name sel_getName
 #  import <objc/runtime.h>
 #else
