--- SOPE/NGCards/NSCalendarDate+NGCards.m.orig	2015-10-08 08:22:33.220485498 +0800
+++ SOPE/NGCards/NSCalendarDate+NGCards.m	2015-10-08 08:24:16.099475908 +0800
@@ -32,16 +32,16 @@
 - (NSString *) iCalFormattedDateTimeString
 {
   return [NSString stringWithFormat: @"%.4d%.2d%.2dT%.2d%.2d%.2d",
-                   [self yearOfCommonEra], [self monthOfYear],
-                   [self dayOfMonth], [self hourOfDay],
-                   [self minuteOfHour], [self secondOfMinute]];
+                   (int)[self yearOfCommonEra], (int)[self monthOfYear],
+                   (int)[self dayOfMonth], (int)[self hourOfDay],
+                   (int)[self minuteOfHour], (int)[self secondOfMinute]];
 }
 
 - (NSString *) iCalFormattedDateString
 {
   return [NSString stringWithFormat: @"%.4d%.2d%.2d",
-                   [self yearOfCommonEra], [self monthOfYear],
-                   [self dayOfMonth]];
+                   (int)[self yearOfCommonEra], (int)[self monthOfYear],
+                   (int)[self dayOfMonth]];
 }
 
 @end
