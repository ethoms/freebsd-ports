--- SoObjects/SOGo/NSCalendarDate+SOGo.m.orig	2015-10-08 15:27:02.130727407 +0800
+++ SoObjects/SOGo/NSCalendarDate+SOGo.m	2015-10-08 15:30:00.529714242 +0800
@@ -88,9 +88,9 @@
   NSString *str;
 
   str = [NSString stringWithFormat: @"%.4d%.2d%.2d",
-                  [self yearOfCommonEra],
-                  [self monthOfYear],
-                  [self dayOfMonth]];
+                  (int)[self yearOfCommonEra],
+                  (int)[self monthOfYear],
+                  (int)[self dayOfMonth]];
 
   return str;
 }
@@ -107,9 +107,9 @@
 
   return
     [NSString stringWithFormat: @"%@, %.2d %@ %d %.2d:%.2d:%.2d %+.4d",
-	      rfc822Days[[self dayOfWeek]], [self dayOfMonth],
-	      rfc822Months[[self monthOfYear]], [self yearOfCommonEra],
-	      [self hourOfDay], [self minuteOfHour], [self secondOfMinute],
+	      rfc822Days[[self dayOfWeek]], (int)[self dayOfMonth],
+	      rfc822Months[[self monthOfYear]], (int)[self yearOfCommonEra],
+	      (int)[self hourOfDay], (int)[self minuteOfHour], (int)[self secondOfMinute],
 	      timeZoneShift];
 }
 
