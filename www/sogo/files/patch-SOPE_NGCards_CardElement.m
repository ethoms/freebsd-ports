--- SOPE/NGCards/CardElement.m.orig	2015-10-08 08:46:14.856388025 +0800
+++ SOPE/NGCards/CardElement.m	2015-10-08 08:48:15.614375777 +0800
@@ -414,7 +414,7 @@
   if (group)
     [str appendFormat: @"%@ (group: %@)\n", tag, group];
   else
-    [str appendFormat: @"%@\n", tag, group];
+    [str appendFormat: @"%@\n", tag];
 
   [str appendString: [self versitString]];
 
