--- ./sope-xml/DOM/DOMSaxHandler.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/DOM/DOMSaxHandler.m	2013-10-09 17:03:32.000000000 +0100
@@ -255,7 +255,7 @@
   self->tagDepth--;
 }
 
-- (void)characters:(unichar *)_chars length:(int)_len {
+- (void)characters:(unichar *)_chars length:(NSUInteger)_len {
   id       charNode;
   NSString *data;
   
