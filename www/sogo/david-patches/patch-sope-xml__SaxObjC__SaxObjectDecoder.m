--- ./sope-xml/SaxObjC/SaxObjectDecoder.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/SaxObjC/SaxObjectDecoder.m	2013-10-09 17:03:32.000000000 +0100
@@ -172,7 +172,7 @@
 		      reason:_ns
 		      userInfo:nil];
 }
-- (NSException *)missingElementMapping:(NSString *)_ns:(NSString *)_tag {
+- (NSException *)missingElementMapping:(NSString *)_ns :(NSString *)_tag {
   return [NSException exceptionWithName:@"MissingElementMapping"
 		      reason:_tag
 		      userInfo:nil];
@@ -266,7 +266,7 @@
 
 /* CDATA */
 
-- (void)characters:(unichar *)_chars length:(int)_len {
+- (void)characters:(unichar *)_chars length:(NSUInteger)_len {
   _SaxObjTagInfo *info;
   
   if (_len == 0) return;
