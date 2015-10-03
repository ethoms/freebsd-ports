--- ./sope-core/EOControl/NSArray+EOQualifier.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/NSArray+EOQualifier.m	2013-10-09 17:03:32.000000000 +0100
@@ -35,7 +35,7 @@
   
   count = [self count];
   array = [NSMutableArray arrayWithCapacity:count];
-  for (i = 0, count; i < count; i++) {
+  for (i = 0; i < count; i++) {
     id o;
     
     o = [self objectAtIndex:i];
