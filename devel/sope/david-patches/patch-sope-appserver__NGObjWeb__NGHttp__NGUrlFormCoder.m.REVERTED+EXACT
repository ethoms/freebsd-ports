--- ./sope-appserver/NGObjWeb/NGHttp/NGUrlFormCoder.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/NGHttp/NGUrlFormCoder.m	2013-10-09 17:03:32.000000000 +0100
@@ -93,7 +93,7 @@
                             encoding:NSUTF8StringEncoding];
   if (debugDecoding) {
     NSLog(@"decoded data len %d value (len=%d): %@", 
-	  len, [value length], value);
+	  len, (int)[value length], value);
   }
   return value;
 #if 0
@@ -177,7 +177,7 @@
 - (NSString *)stringByApplyingURLEncoding {
   /* NGExtensions/NSString+misc.h */
   NSLog(@"Note: Called deprecated -stringByApplyingURLEncoding method "
-	@"(use -stringByEscapingURL instead)", __PRETTY_FUNCTION__);
+	@"(use -stringByEscapingURL instead)");
   return [self stringByEscapingURL];
 }
 
