--- ./sope-mime/NGImap4/imCommon.h.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGImap4/imCommon.h	2013-10-09 17:03:32.000000000 +0100
@@ -37,13 +37,14 @@
 #include <NGMime/NGMime.h>
 #include <NGMail/NGMail.h>
 
+// This is also wrong for the apple runtime, although it will usually work:
 #if NeXT_RUNTIME || APPLE_RUNTIME
 #  ifndef sel_eq
 #    define sel_eq(__A__,__B__) (__A__==__B__)
 #  endif
 #endif
 
-#if __GNU_LIBOBJC__ >= 20100911
+#if (__GNU_LIBOBJC__ >= 20100911) || defined(__GNUSTEP_RUNTIME__)
 #  ifndef sel_eq
 #    define sel_eq(__A__,__B__) sel_isEqual(__A__,__B__)
 #  endif
