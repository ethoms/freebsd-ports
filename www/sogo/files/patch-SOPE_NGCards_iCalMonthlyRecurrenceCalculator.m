--- SOPE/NGCards/iCalMonthlyRecurrenceCalculator.m.orig	2015-10-08 19:30:05.019721919 +0800
+++ SOPE/NGCards/iCalMonthlyRecurrenceCalculator.m	2015-10-08 19:31:47.705714765 +0800
@@ -348,7 +348,7 @@
                   if ([byDayMask occursOnDay: currentWeekDay])
                     {
                       if ([bySetPos containsObject:
-                                      [NSString stringWithFormat: @"%d", currentPos]])
+                                      [NSString stringWithFormat: @"%d", (int)currentPos]])
                         monthDays[monthDay+1] = YES;
                       currentPos++;
                     }
@@ -362,7 +362,7 @@
                   if ([byDayMask occursOnDay: currentWeekDay])
                     {
                       if ([bySetPos containsObject:
-                                      [NSString stringWithFormat: @"%d", currentPos]])
+                                      [NSString stringWithFormat: @"%d", (int)currentPos]])
                         monthDays[monthDay] = YES;
                       currentPos--;
                     }
