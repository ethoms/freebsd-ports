--- UI/Scheduler/UIxCalDateSelector.m.orig	2015-10-13 06:02:26.792289741 +0800
+++ UI/Scheduler/UIxCalDateSelector.m	2015-10-13 06:39:25.511136695 +0800
@@ -117,7 +117,7 @@
 
   date = [self startDate];
 
-  return [NSString stringWithFormat: @"%.2d", [date monthOfYear]];
+  return [NSString stringWithFormat: @"%.2d", (int)[date monthOfYear]];
 }
 
 - (NSString *) headerMonthString
@@ -136,7 +136,7 @@
 
   date = [self startDate];
 
-  return [NSString stringWithFormat: @"%d", [date yearOfCommonEra]];
+  return [NSString stringWithFormat: @"%d", (int)[date yearOfCommonEra]];
 }
 
 - (NSString *) localizedDayOfWeekName
