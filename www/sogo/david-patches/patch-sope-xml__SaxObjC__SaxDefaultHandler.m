--- ./sope-xml/SaxObjC/SaxDefaultHandler.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/SaxObjC/SaxDefaultHandler.m	2013-10-09 17:03:32.000000000 +0100
@@ -48,7 +48,7 @@
 {
 }
 
-- (void)characters:(unichar *)_chars length:(int)_len {
+- (void)characters:(unichar *)_chars length:(NSUInteger)_len {
 }
 - (void)ignorableWhitespace:(unichar *)_chars length:(int)_len {
 }
