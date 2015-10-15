--- SoObjects/Appointments/MSExchangeFreeBusy.m.orig	2015-10-09 16:15:25.499576435 +0800
+++ SoObjects/Appointments/MSExchangeFreeBusy.m	2015-10-09 16:17:52.374562154 +0800
@@ -344,7 +344,7 @@
   NSMutableString *s;
 
   s = [NSMutableString stringWithCapacity: 64];
-  [s appendFormat:@"<0x%08X[%@]:", self, NSStringFromClass([self class])];
+  [s appendFormat:@"<0x%08X[%@]:", (unsigned int)self, NSStringFromClass([self class])];
   if (freeBusyViewType)
     [s appendFormat:@" freeBusyViewType='%@'", freeBusyViewType];
   if (mergedFreeBusy)
