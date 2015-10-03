--- ./sope-mime/NGMime/NGMimePartGenerator.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGMime/NGMimePartGenerator.m	2013-10-09 17:03:32.000000000 +0100
@@ -92,7 +92,7 @@
     self->result = nil;
   }
   self->result = (self->useMimeData)
-    ? [[NGMimeJoinedData alloc] init]
+    ? (NSMutableData*)[[NGMimeJoinedData alloc] init]
     : [[NSMutableData alloc] initWithCapacity:4096];
   
   if ([self->result respondsToSelector:@selector(methodForSelector:)]) {
