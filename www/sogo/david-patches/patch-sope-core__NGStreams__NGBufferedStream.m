--- ./sope-core/NGStreams/NGBufferedStream.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGStreams/NGBufferedStream.m	2013-10-09 17:03:32.000000000 +0100
@@ -66,7 +66,7 @@
   }
   if (*(Class *)_source == DataStreamClass) {
     [self release];
-    return [_source retain];
+    return (id)[_source retain];
   }
 
   if ((self = [super initWithSource:_source])) {
@@ -90,7 +90,7 @@
   }
   if (*(Class *)_source == DataStreamClass) {
     [self release];
-    return [_source retain];
+    return (id)[_source retain];
   }
 
   if ((self = [super initWithInputSource:_source])) {
@@ -109,7 +109,7 @@
   }
   if (*(Class *)_src == DataStreamClass) {
     [self release];
-    return [_src retain];
+    return (id)[_src retain];
   }
 
   if ((self = [super initWithOutputSource:_src])) {
