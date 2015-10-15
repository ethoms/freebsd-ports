--- UI/SOGoUI/SOGoAptFormatter.m.orig	2015-10-12 01:17:54.305420146 +0800
+++ UI/SOGoUI/SOGoAptFormatter.m	2015-10-12 01:19:34.047412685 +0800
@@ -155,14 +155,14 @@
    */
 
   [_buf appendFormat:@"%02i:%02i",
-                     [_date hourOfDay],
-                     [_date minuteOfHour]];
+                     (int)[_date hourOfDay],
+                     (int)[_date minuteOfHour]];
   if (_refDate && ![_date isDateOnSameDay:_refDate]) {
     [_buf appendFormat:@" (%02i-%02i",
-                       [_date monthOfYear],
-                       [_date dayOfMonth]];
+                       (int)[_date monthOfYear],
+                       (int)[_date dayOfMonth]];
     if ([_date yearOfCommonEra] != [_refDate yearOfCommonEra])
-      [_buf appendFormat:@"-%04i", [_date yearOfCommonEra]];
+      [_buf appendFormat:@"-%04i", (int)[_date yearOfCommonEra]];
     [_buf appendString:@")"];
   }
 }
