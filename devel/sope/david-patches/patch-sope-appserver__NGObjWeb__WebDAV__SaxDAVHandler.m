--- ./sope-appserver/NGObjWeb/WebDAV/SaxDAVHandler.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WebDAV/SaxDAVHandler.m	2013-10-09 17:03:32.000000000 +0100
@@ -928,7 +928,7 @@
 
 /* CDATA */
 
-- (void)characters:(unichar *)_chars length:(int)_len {
+- (void)characters:(unichar *)_chars length:(NSUInteger)_len {
   if (heavyLog) [self logWithFormat:@"got %i chars", _len];
   
   if (_len > 0 && (self->cdata != nil)) {
