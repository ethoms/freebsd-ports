--- ./sope-core/EOControl/EOGenericRecord.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EOGenericRecord.m	2013-10-09 17:03:32.000000000 +0100
@@ -64,7 +64,7 @@
 
 static EONull *null = nil;
 
-+ (int)version {
++ (NSInteger)version {
   return 2;
 }
 
