--- Tools/SOGoEAlarmsNotifier.m.orig	2015-10-13 21:19:28.942510596 +0800
+++ Tools/SOGoEAlarmsNotifier.m	2015-10-13 21:24:03.748478690 +0800
@@ -81,8 +81,8 @@
   timestamp = (int) [[NSDate date] timeIntervalSince1970];
   pGUID = [[NSProcessInfo processInfo] globallyUniqueString];
 
-  messageID = [NSString stringWithFormat: @"<%0X-%0X-%0X-%0X@%u>",
-                        pid, timestamp, sequence, random(), [pGUID hash]];
+  messageID = [NSString stringWithFormat: @"<%0X-%0X-%0X-%0X@%lu>",
+                        pid, timestamp, sequence, (unsigned int)random(), [pGUID hash]];
 
   return [messageID lowercaseString];
 }
