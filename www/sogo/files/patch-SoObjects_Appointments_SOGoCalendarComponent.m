--- SoObjects/Appointments/SOGoCalendarComponent.m.orig	2015-10-09 13:51:16.100168977 +0800
+++ SoObjects/Appointments/SOGoCalendarComponent.m	2015-10-09 14:20:59.057046917 +0800
@@ -140,6 +140,13 @@
   return aclManager;
 }
 
+- (NSException *) changeParticipationStatus: (NSString *) newPartStat
+                               withDelegate: (iCalPerson *) delegate
+                                      alarm: (iCalAlarm *) alarm;
+{
+  return nil;
+}
+
 - (id) init
 {
   if ((self = [super init]))
@@ -171,7 +178,7 @@
 
 - (Class *) parsingClass
 {
-  return [iCalCalendar class];
+  return (Class *) [iCalCalendar class];
 }
 
 - (NSString *) davContentType
