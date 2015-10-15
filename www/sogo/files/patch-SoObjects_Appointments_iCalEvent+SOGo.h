--- SoObjects/Appointments/iCalEvent+SOGo.h.orig	2015-10-09 13:42:25.289208627 +0800
+++ SoObjects/Appointments/iCalEvent+SOGo.h	2015-10-09 13:42:56.647202696 +0800
@@ -28,7 +28,7 @@
 @interface iCalEvent (SOGoExtensions)
 
 - (BOOL) isStillRelevant;
-- (unsigned int) occurenceInterval;
+- (NSTimeInterval) occurenceInterval;
 - (void) updateRecurrenceRulesUntilDate: (NSCalendarDate *) previousEndDate;
 
 @end
