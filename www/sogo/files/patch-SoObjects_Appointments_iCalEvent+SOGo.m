--- SoObjects/Appointments/iCalEvent+SOGo.m.orig	2015-10-09 13:40:11.097214920 +0800
+++ SoObjects/Appointments/iCalEvent+SOGo.m	2015-10-09 13:41:24.319208579 +0800
@@ -259,7 +259,7 @@
 
 - (NSTimeInterval) occurenceInterval
 {
-  return [[self endDate] timeIntervalSinceDate: [self startDate]];
+  return (NSTimeInterval) [[self endDate] timeIntervalSinceDate: [self startDate]];
 }
 
 /**
