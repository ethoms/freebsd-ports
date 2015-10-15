--- SoObjects/SOGo/SOGoFolder.m.orig	2015-10-08 12:48:00.753385180 +0800
+++ SoObjects/SOGo/SOGoFolder.m	2015-10-08 12:50:18.720380410 +0800
@@ -107,7 +107,7 @@
 
 - (void) setDisplayName: (NSString *) newDisplayName
 {
-  ASSIGN (displayName, newDisplayName);
+  ASSIGN (displayName, [newDisplayName mutableCopy]);
 }
 
 - (NSString *) displayName
