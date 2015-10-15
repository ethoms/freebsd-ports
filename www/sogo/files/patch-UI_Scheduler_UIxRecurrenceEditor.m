--- UI/Scheduler/UIxRecurrenceEditor.m.orig	2015-10-13 08:43:32.796623156 +0800
+++ UI/Scheduler/UIxRecurrenceEditor.m	2015-10-13 08:44:08.401625528 +0800
@@ -148,7 +148,7 @@
       [shortWeekDaysList retain];
     }
 
-  id = [NSString stringWithFormat: @"weekDay%i", [shortWeekDaysList indexOfObject: item]];
+  id = [NSString stringWithFormat: @"weekDay%i", (int)[shortWeekDaysList indexOfObject: item]];
 
   return id;
 }
