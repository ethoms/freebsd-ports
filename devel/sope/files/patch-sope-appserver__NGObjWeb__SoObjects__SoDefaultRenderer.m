--- ./sope-appserver/NGObjWeb/SoObjects/SoDefaultRenderer.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/SoObjects/SoDefaultRenderer.m	2013-10-09 17:03:32.000000000 +0100
@@ -154,7 +154,7 @@
   
   [r setStatus:200];
   [r setHeader:@"application/octet-stream" forKey:@"content-type"];
-  [r setHeader:[NSString stringWithFormat:@"%i", [_data length]] 
+  [r setHeader:[NSString stringWithFormat:@"%i", (int)[_data length]] 
      forKey:@"content-length"];
   [r setContent:_data];
   return nil;
