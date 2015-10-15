--- UI/Scheduler/UIxCalDayView.m.orig	2015-10-13 06:55:05.290075011 +0800
+++ UI/Scheduler/UIxCalDayView.m	2015-10-13 06:55:41.472070500 +0800
@@ -164,7 +164,7 @@
     
   date = [self selectedDate];
   hmString = [NSString stringWithFormat:@"%.2d%.2d",
-                       [date hourOfDay], [date minuteOfHour]];
+                       (int)[date hourOfDay], (int)[date minuteOfHour]];
   qp = [[self queryParameters] mutableCopy];
   [self setSelectedDateQueryParameter:date inDictionary:qp];
   [qp setObject: hmString forKey:@"hm"];
