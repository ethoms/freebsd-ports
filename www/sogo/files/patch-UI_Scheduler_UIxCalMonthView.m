--- UI/Scheduler/UIxCalMonthView.m.orig	2015-10-13 06:56:35.930068918 +0800
+++ UI/Scheduler/UIxCalMonthView.m	2015-10-13 06:57:08.272061713 +0800
@@ -299,7 +299,7 @@
 
   [classes appendFormat: @"day weekOf%d week%dof%d day%d",
            numberOfWeeks,
-           [weeksToDisplay indexOfObject: currentWeek],
+           (int)[weeksToDisplay indexOfObject: currentWeek],
            numberOfWeeks, dayOfWeek];
   if (realDayOfWeek == 0 || realDayOfWeek == 6)
     [classes appendString: @" weekEndDay"];
