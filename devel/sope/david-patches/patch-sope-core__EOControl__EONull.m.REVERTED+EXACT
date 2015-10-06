--- ./sope-core/EOControl/EONull.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EONull.m	2013-10-09 17:03:32.000000000 +0100
@@ -32,15 +32,15 @@
 @implementation EONull
 
 + (id)allocWithZone:(NSZone *)_zone {
-  return [NSNull allocWithZone:_zone];
+  return (EONull*)[NSNull allocWithZone:_zone];
 }
 
 + (NSNull *)null {
-  return [NSNull null];
+  return (EONull*)[NSNull null];
 }
 
 - (id)self {
-  return [NSNull null];
+  return (EONull*)[NSNull null];
 }
 
 @end
