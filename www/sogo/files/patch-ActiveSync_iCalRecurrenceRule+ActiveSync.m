--- ActiveSync/iCalRecurrenceRule+ActiveSync.m.orig	2015-10-27 02:06:56.342903566 +0800
+++ ActiveSync/iCalRecurrenceRule+ActiveSync.m	2015-10-27 02:07:35.858897673 +0800
@@ -140,7 +140,7 @@
           // Simple reccurrence rule of type "Monthly"
           type = 2;
           [s appendFormat: @"<Recurrence_DayOfMonth xmlns=\"Calendar:\">%d</Recurrence_DayOfMonth>",
-             [[[self parent] startDate] dayOfMonth]];
+             (int)[[[self parent] startDate] dayOfMonth]];
         }
     }
   else if ([self frequency] == iCalRecurrenceFrequenceYearly)
