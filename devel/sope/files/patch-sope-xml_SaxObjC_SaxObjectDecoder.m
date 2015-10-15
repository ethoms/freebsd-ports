--- sope-xml/SaxObjC/SaxObjectDecoder.m.orig	2015-10-07 07:52:27.160563662 +0800
+++ sope-xml/SaxObjC/SaxObjectDecoder.m	2015-10-07 07:57:28.207547127 +0800
@@ -172,7 +172,7 @@
 		      reason:_ns
 		      userInfo:nil];
 }
-- (NSException *)missingElementMapping:(NSString *)_ns:(NSString *)_tag {
+- (NSException *)missingElementMapping:(NSString *)_ns :(NSString *)_tag {
   return [NSException exceptionWithName:@"MissingElementMapping"
 		      reason:_tag
 		      userInfo:nil];
