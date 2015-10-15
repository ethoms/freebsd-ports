--- UI/Scheduler/UIxCalDayTable.h.orig	2015-10-13 06:00:14.240298780 +0800
+++ UI/Scheduler/UIxCalDayTable.h	2015-10-13 06:00:19.230301851 +0800
@@ -39,7 +39,8 @@
   NSArray *weekDays;
   NSString *currentView, *timeFormat, *currentTableHour;
   NSCalendarDate *startDate, *currentTableDay;
-  NSMutableArray *daysToDisplay, *calendarsToDisplay,  *currentCalendar, *hoursToDisplay;
+  NSMutableArray *daysToDisplay, *calendarsToDisplay, *hoursToDisplay;
+  NSMutableDictionary *currentCalendar;
   unsigned int numberOfDays;
 }
 
@@ -55,7 +56,7 @@
 - (NSArray *) calendarsToDisplay;
 - (void) setCurrentTableDay: (NSCalendarDate *) aTableDay;
 - (NSCalendarDate *) currentTableDay;
-- (NSMutableArray *) currentCalendar;
+- (NSMutableDictionary *) currentCalendar;
 
 @end
 
