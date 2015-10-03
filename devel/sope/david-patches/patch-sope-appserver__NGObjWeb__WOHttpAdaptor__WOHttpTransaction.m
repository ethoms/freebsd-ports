--- ./sope-appserver/NGObjWeb/WOHttpAdaptor/WOHttpTransaction.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WOHttpAdaptor/WOHttpTransaction.m	2013-10-09 17:03:32.000000000 +0100
@@ -1001,10 +1001,10 @@
   [buf appendString:remoteHost];
   [buf appendString:@" - - ["];
   [buf appendFormat:@"%02i/%s/%04i:%02i:%02i:%02i",
-        [now dayOfMonth],
+        (int)[now dayOfMonth],
         monthAbbr([now monthOfYear]),
-        [now yearOfCommonEra],
-        [now hourOfDay], [now minuteOfHour], [now secondOfMinute]];
+        (int)[now yearOfCommonEra],
+        (int)[now hourOfDay], (int)[now minuteOfHour], (int)[now secondOfMinute]];
   [buf appendString:@" GMT] \""];
   [buf appendString:[_request method]];
   [buf appendString:@" "];
@@ -1014,9 +1014,9 @@
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
