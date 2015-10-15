--- ./sope-mime/NGImap4/NGImap4Connection.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGImap4/NGImap4Connection.m	2013-10-09 17:03:32.000000000 +0100
@@ -1174,10 +1174,10 @@
   [ms appendFormat:@" created=%@", self->creationTime];
   
   if (self->subfolders != nil)
-    [ms appendFormat:@" #cached-folders=%d", [self->subfolders count]];
+    [ms appendFormat:@" #cached-folders=%d", (int)[self->subfolders count]];
   
   if (self->cachedUIDs != nil)
-    [ms appendFormat:@" #cached-uids=%d", [self->cachedUIDs count]];
+    [ms appendFormat:@" #cached-uids=%d", (int)[self->cachedUIDs count]];
   
   [ms appendString:@">"];
   return ms;
