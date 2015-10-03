--- ./sope-appserver/NGObjWeb/WOHTTPConnection.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WOHTTPConnection.m	2013-10-09 17:03:32.000000000 +0100
@@ -352,7 +352,7 @@
   /* set content-length header */
   
   if ([content length] > 0) {
-    [_request setHeader:[NSString stringWithFormat:@"%d", [content length]]
+    [_request setHeader:[NSString stringWithFormat:@"%d", (int)[content length]]
               forKey:@"content-length"];
   }
 
