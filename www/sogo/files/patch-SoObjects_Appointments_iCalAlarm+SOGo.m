--- SoObjects/Appointments/iCalAlarm+SOGo.m.orig	2015-10-09 13:32:17.705247981 +0800
+++ SoObjects/Appointments/iCalAlarm+SOGo.m	2015-10-09 13:36:28.503254126 +0800
@@ -102,9 +102,9 @@
         }
       
       if ([reminderReference caseInsensitiveCompare: @"BEFORE"] == NSOrderedSame)
-        aValue = [NSString stringWithString: @"-P"];
+        aValue = (NSString *) @"-P";
       else
-        aValue = [NSString stringWithString: @"P"];
+        aValue = (NSString *) @"P";
       
       if ([reminderUnit caseInsensitiveCompare: @"MINUTES"] == NSOrderedSame ||
           [reminderUnit caseInsensitiveCompare: @"HOURS"] == NSOrderedSame)
