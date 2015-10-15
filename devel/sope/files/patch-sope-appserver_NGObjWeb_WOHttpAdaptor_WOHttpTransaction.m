--- sope-appserver/NGObjWeb/WOHttpAdaptor/WOHttpTransaction.m.orig	2015-10-07 04:27:29.705409511 +0800
+++ sope-appserver/NGObjWeb/WOHttpAdaptor/WOHttpTransaction.m	2015-10-07 04:28:30.761407410 +0800
@@ -1021,9 +1021,9 @@
   [buf appendString:@"\" "];
   [buf appendFormat:@"%i %i",  
          [_response status],
-         [[_response content] length]];
+         (int)[[_response content] length]];
   if (doExtLog)
-    [buf appendFormat:@"/%i", [[_request content] length]];
+    [buf appendFormat:@"/%i", (int)[[_request content] length]];
   
   /* append duration */
   if (lstartDate != nil)
