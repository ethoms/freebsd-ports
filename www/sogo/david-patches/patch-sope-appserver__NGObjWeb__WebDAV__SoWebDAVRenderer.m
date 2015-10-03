--- ./sope-appserver/NGObjWeb/WebDAV/SoWebDAVRenderer.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WebDAV/SoWebDAVRenderer.m	2013-10-09 17:03:32.000000000 +0100
@@ -1311,7 +1311,7 @@
     [r appendContentString:@"204 No Content"];
   else {
     NSString *s;
-    s = [NSString stringWithFormat:@"%i code%i"];
+    s = [NSString stringWithFormat:@"%i code", _code];
     [r appendContentString:s];
   }
   [r appendContentString:@"</D:status>"];
