--- ./sope-gdl1/GDLAccess/EOFault.h.orig	2013-10-09 17:08:09.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EOFault.h	2013-10-09 17:08:30.000000000 +0100
@@ -9,6 +9,9 @@
 
 @class EOFaultHandler;
 
+#ifdef __clang__
+__attribute__((objc_root_class))
+#endif
 @interface EOFault
 {
   Class          isa;
