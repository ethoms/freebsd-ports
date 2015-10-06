--- ./sope-core/NGStreams/NGConcreteStreamFileHandle.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGStreams/NGConcreteStreamFileHandle.m	2013-10-09 17:03:32.000000000 +0100
@@ -118,7 +118,7 @@
 
   *(&data) = [NSMutableData dataWithCapacity:2048];
   *(&bs) = [self->stream isKindOfClass:[NGBufferedStream class]]
-    ? [self->stream retain]
+    ? (id)[self->stream retain]
     : [(NGBufferedStream *)[NGBufferedStream alloc] 
           initWithSource:self->stream];
 
