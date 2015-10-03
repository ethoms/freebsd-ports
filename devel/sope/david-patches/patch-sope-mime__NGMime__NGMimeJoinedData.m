--- ./sope-mime/NGMime/NGMimeJoinedData.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGMime/NGMimeJoinedData.m	2013-10-09 17:03:32.000000000 +0100
@@ -168,7 +168,7 @@
   ms = [NSMutableString stringWithCapacity:128];
   [ms appendFormat:@"<0x%p[%@]:", self, NSStringFromClass([self class])];
   [ms appendFormat:@" joinedDataObjects=%d>",
-        [self->joinedDataObjects count]];
+        (int)[self->joinedDataObjects count]];
   [ms appendString:@">"];
   return ms;
 }
