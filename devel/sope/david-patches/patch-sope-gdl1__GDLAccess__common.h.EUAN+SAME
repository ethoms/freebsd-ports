--- ./sope-gdl1/GDLAccess/common.h.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-gdl1/GDLAccess/common.h	2013-10-09 17:03:32.000000000 +0100
@@ -55,7 +55,7 @@
 #  endif
 #endif
 
-#if __GNU_LIBOBJC__ >= 20100911
+#if (__GNU_LIBOBJC__ >= 20100911) || defined(__GNUSTEP_RUNTIME__)
 #  define sel_eq(__A__,__B__) sel_isEqual(__A__,__B__)
 #  ifndef SEL_EQ
 #    define SEL_EQ(__A__,__B__) sel_isEqual(__A__,__B__)
