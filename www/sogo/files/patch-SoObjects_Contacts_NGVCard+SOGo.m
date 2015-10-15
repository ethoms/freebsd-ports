--- SoObjects/Contacts/NGVCard+SOGo.m.orig	2015-10-09 16:20:14.044553480 +0800
+++ SoObjects/Contacts/NGVCard+SOGo.m	2015-10-09 17:29:21.144266488 +0800
@@ -297,7 +297,7 @@
 
   if (year && month && day)
     [self setBday: [NSString stringWithFormat: @"%.4d-%.2d-%.2d",
-                             year, month, day]];
+                             (int)year, (int)month, (int)day]];
   else
     [self setBday: @""];
 
@@ -614,11 +614,11 @@
   birthDay = [[self bday] asCalendarDate];
   if (birthDay)
     {
-      stringValue = [NSString stringWithFormat: @"%.4d", [birthDay yearOfCommonEra]];
+      stringValue = [NSString stringWithFormat: @"%.4d", (int)[birthDay yearOfCommonEra]];
       [self _setValue: @"birthyear" to: stringValue inLDIFRecord: ldifRecord];
-      stringValue = [NSString stringWithFormat: @"%.2d", [birthDay monthOfYear]];
+      stringValue = [NSString stringWithFormat: @"%.2d", (int)[birthDay monthOfYear]];
       [self _setValue: @"birthmonth" to: stringValue inLDIFRecord: ldifRecord];
-      stringValue = [NSString stringWithFormat: @"%.2d", [birthDay dayOfMonth]];
+      stringValue = [NSString stringWithFormat: @"%.2d", (int)[birthDay dayOfMonth]];
       [self _setValue: @"birthday" to: stringValue inLDIFRecord: ldifRecord];
     }
   [self _setValue: @"description" to: [self note] inLDIFRecord: ldifRecord];
