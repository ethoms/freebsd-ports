--- ./sope-gdl1/GDLAccess/EOAttribute.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EOAttribute.m	2013-10-09 17:03:32.000000000 +0100
@@ -535,7 +535,7 @@
     return @"";
 
   clen = [self cStringLength];
-#if GNU_RUNTIME
+#if GNU_RUNTIME && !defined(__GNUSTEP_RUNTIME__)
   s = objc_atomic_malloc(clen + 4);
 #else
   s = malloc(clen + 4);
