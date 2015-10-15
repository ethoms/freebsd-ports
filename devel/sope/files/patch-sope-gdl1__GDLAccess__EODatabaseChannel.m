--- ./sope-gdl1/GDLAccess/EODatabaseChannel.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EODatabaseChannel.m	2013-10-09 17:03:32.000000000 +0100
@@ -81,7 +81,7 @@
 - (Class)privateClassForEntity:(EOEntity *)anEntity;
 - (void)privateUpdateCurrentEntityInfo;
 - (void)privateClearCurrentEntityInfo;
-- (void)privateReportError:(SEL)method:(NSString *)format, ...;
+- (void)privateReportError:(SEL)method :(NSString *)format, ...;
 @end
 
 /*
@@ -593,7 +593,7 @@
   }
   // Record object in database context
   if (![new_pkey isEqual:old_pkey]) {
-    NSLog(@"WARNING: (%@) primary key changed from %@ to %@",
+    NSLog(@"WARNING: (%s) primary key changed from %@ to %@",
           __PRETTY_FUNCTION__, old_pkey, new_pkey);
     [databaseContext forgetObject:anObj];
   }
