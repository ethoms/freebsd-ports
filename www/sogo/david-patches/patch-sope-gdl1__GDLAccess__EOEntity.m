--- ./sope-gdl1/GDLAccess/EOEntity.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EOEntity.m	2013-10-09 17:03:32.000000000 +0100
@@ -106,7 +106,7 @@
 }
 
 // Is equal only if same name; used to make aliasing ordering stable
-- (unsigned)hash {
+- (NSUInteger)hash {
   return [name hash];
 }
 
@@ -1100,7 +1100,7 @@
     unsigned cnt, cnt2;
 
     clen = [self cStringLength];
-#if GNU_RUNTIME
+#if GNU_RUNTIME && !defined(__GNUSTEP_RUNTIME__)
     s = objc_atomic_malloc(clen + 4);
 #else
     s = malloc(clen + 4);
