--- UI/Scheduler/UIxCalListingActions.m.orig	2015-09-17 02:41:36.000000000 +0800
+++ UI/Scheduler/UIxCalListingActions.m	2015-10-15 11:41:53.562979042 +0800
@@ -316,7 +316,7 @@
   NSString *owner, *role, *calendarName, *filters, *iCalString;
   NSRange match;
   iCalCalendar *calendar;
-  iCalObject *master;
+  iCalEntityObject *master;
   SOGoAppointmentFolder *currentFolder;
   SOGoAppointmentFolders *clientObject;
   SOGoUser *ownerUser;
@@ -350,11 +350,11 @@
           else if ([criteria isEqualToString:@"entireContent"])
             {
               // First search : Through the quick table inside the location, category and title columns
-              quickInfos = [currentFolder fetchCoreInfosFrom: startDate
+              quickInfos = [[currentFolder fetchCoreInfosFrom: startDate
                                                           to: endDate
                                                        title: value
                                                    component: component
-                                           additionalFilters: criteria];
+                                           additionalFilters: criteria] mutableCopy];
         
               // Save the c_name in another array to compare with
               if ([quickInfos count] > 0)
@@ -366,10 +366,10 @@
                 }
         
               // Second research : Every objects except for those already in the quickInfos array
-              allInfos = [currentFolder fetchCoreInfosFrom: startDate
+              allInfos = [[currentFolder fetchCoreInfosFrom: startDate
                                                         to: endDate
                                                      title: nil
-                                                 component: component];
+                                                 component: component] mutableCopy];
               if (quickInfosFlag == YES)
                 {
                   for (i = ([allInfos count] - 1); i >= 0 ; i--) {
@@ -383,7 +383,7 @@
                 {
                   iCalString = [[allInfos objectAtIndex:i] objectForKey:@"c_content"];
                   calendar = [iCalCalendar parseSingleFromSource: iCalString];
-                  master = [calendar firstChildWithTag:component];
+                  master = (iCalEntityObject *)[calendar firstChildWithTag:component];
                   if (master) {
                     if ([[master comment] length] > 0)
                       {
@@ -1089,7 +1089,7 @@
   
   if ([currentView isEqualToString: @"multicolumndayview"])
   {
-    calendars = [self _selectedCalendars];
+    calendars = [[self _selectedCalendars] mutableCopy];
     eventsByCalendars = [NSMutableArray arrayWithCapacity:[calendars count]];
     for (i = 0; i < [calendars count]; i++) // For each calendar
     {
