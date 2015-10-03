--- ./sope-xml/XmlRpc/XmlRpcEncoder.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/XmlRpc/XmlRpcEncoder.m	2013-10-09 17:03:32.000000000 +0100
@@ -365,8 +365,8 @@
   /* format in XML-RPC date format */
   
   s = [[NSString alloc] initWithFormat:@"%04i%02i%02iT%02i:%02i:%02i",
-                 [date yearOfCommonEra], [date monthOfYear], [date dayOfMonth],
-                 [date hourOfDay], [date minuteOfHour], [date secondOfMinute]];
+                 (int)[date yearOfCommonEra], (int)[date monthOfYear], (int)[date dayOfMonth],
+                 (int)[date hourOfDay], (int)[date minuteOfHour], (int)[date secondOfMinute]];
   
   [date release]; date = nil;
   
