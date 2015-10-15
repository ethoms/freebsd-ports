--- SoObjects/SOGo/SOGoCacheGCSFolder.h.orig	2015-10-08 11:19:28.603751311 +0800
+++ SoObjects/SOGo/SOGoCacheGCSFolder.h	2015-10-08 11:35:36.006684174 +0800
@@ -40,6 +40,8 @@
 
 - (NSMutableString *) pathForChild: (NSString *) childName;
 
+- (void) addUserInAcls: (NSString *) user;
+
 - (NSArray *) toOneRelationshipKeys;
 - (NSArray *) toManyRelationshipKeys;
 
