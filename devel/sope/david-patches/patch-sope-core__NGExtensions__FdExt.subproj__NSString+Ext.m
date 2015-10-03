--- ./sope-core/NGExtensions/FdExt.subproj/NSString+Ext.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/FdExt.subproj/NSString+Ext.m	2013-10-09 17:03:32.000000000 +0100
@@ -68,7 +68,7 @@
     
     if ((len = [self length]) > 0) {
         unichar  *buf;
-        unsigned idx;
+        NSInteger idx;
         
         buf = calloc(len + 1, sizeof(unichar));
         [self getCharacters:buf];
