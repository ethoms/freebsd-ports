--- ./sope-core/NGExtensions/NGLogging.subproj/NGLogEventDetailedFormatter.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/NGLogging.subproj/NGLogEventDetailedFormatter.m	2013-10-09 17:03:32.000000000 +0100
@@ -86,8 +86,8 @@
   date = [_event date];
   [fe appendFormat:@"%s %02i %02i:%02i:%02i %s [%d]: %s",
     monthNames[[date monthOfYear]],
-    [date dayOfMonth],
-    [date hourOfDay], [date minuteOfHour], [date secondOfMinute],
+    (int)[date dayOfMonth],
+    (int)[date hourOfDay], (int)[date minuteOfHour], (int)[date secondOfMinute],
     processName,
     /* Note: pid can change after a fork() */
 #if NeXT_Foundation_LIBRARY || COCOA_Foundation_LIBRARY
