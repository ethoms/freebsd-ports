--- sope-appserver/NGObjWeb/DynamicElements/WOHyperlinkInfo.m.orig	2015-10-08 05:14:48.391259215 +0800
+++ sope-appserver/NGObjWeb/DynamicElements/WOHyperlinkInfo.m	2015-10-08 05:40:26.693157878 +0800
@@ -27,7 +27,7 @@
 @implementation WOHyperlinkInfo
 
 - (id)initWithConfig:(NSMutableDictionary *)_config {
-  unsigned count;
+  unsigned count = (unsigned)[_config count];
 
   self->sidInUrl = YES;
   
