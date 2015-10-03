--- ./sope-core/NGStreams/NGByteBuffer.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGStreams/NGByteBuffer.m	2013-10-09 17:03:32.000000000 +0100
@@ -44,7 +44,7 @@
   DataStreamClass   = NSClassFromString(@"NGDataStream");
 }
 
-+ (int)version {
++ (NSInteger)version {
   return [super version] + 1;
 }
 
@@ -61,7 +61,7 @@
   }
   if (*(Class *)_source == DataStreamClass) {
     [self release];
-    return [_source retain];
+    return (id)[_source retain];
   }
   if ((self = [super initWithSource:_source])) {
     unsigned size = 0;
