--- SoObjects/SOGo/NSDictionary+DAV.m.orig	2015-10-08 17:24:48.307243279 +0800
+++ SoObjects/SOGo/NSDictionary+DAV.m	2015-10-08 17:25:57.354237540 +0800
@@ -46,7 +46,7 @@
 {
   NSString *newTag;
 
-  newTag = [NSString stringWithFormat: @"n%d", [namespaces count]];
+  newTag = [NSString stringWithFormat: @"n%d", (int)[namespaces count]];
   [namespaces setObject: newTag forKey: newNS];
 
   return newTag;
