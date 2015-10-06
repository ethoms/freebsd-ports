--- ./sope-appserver/NGObjWeb/common.h.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/common.h	2013-10-09 17:03:32.000000000 +0100
@@ -51,7 +51,7 @@
 #include <NGExtensions/NGLogging.h>
 #include <NGStreams/NGStreams.h>
 
-#if NeXT_RUNTIME || APPLE_RUNTIME || (__GNU_LIBOBJC__ >= 20100911)
+#if NeXT_RUNTIME || APPLE_RUNTIME || (__GNU_LIBOBJC__ >= 20100911) || defined(__GNUSTEP_RUNTIME__)
 #  ifndef sel_get_name
 #    define sel_get_name(__XXX__)    sel_getName(__XXX__)
 #    define sel_get_any_uid(__XXX__) sel_getUid(__XXX__)
