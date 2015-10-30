--- ActiveSync/iCalAlarm+ActiveSync.m.orig	2015-10-27 01:56:41.220945511 +0800
+++ ActiveSync/iCalAlarm+ActiveSync.m	2015-10-27 02:01:04.771924080 +0800
@@ -58,7 +58,7 @@
       
       // don't send negative reminder - not supported
       if (delta > 0)
-        [s appendFormat: @"<Reminder xmlns=\"Calendar:\">%d</Reminder>", delta];
+        [s appendFormat: @"<Reminder xmlns=\"Calendar:\">%d</Reminder>", (int)delta];
     }
   
   return s;
