--- ./sope-core/NGExtensions/FdExt.subproj/NSString+Escaping.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/FdExt.subproj/NSString+Escaping.m	2013-10-09 17:03:32.000000000 +0100
@@ -71,7 +71,7 @@
 }
 
 - (NSString *)stringByEscapingCharactersFromSet:(NSCharacterSet *)_escSet
-  usingStringEscaping:(<NGStringEscaping>)_esc
+  usingStringEscaping:(id<NGStringEscaping>)_esc
 {
   NSMutableString *safeString;
   unsigned length;
