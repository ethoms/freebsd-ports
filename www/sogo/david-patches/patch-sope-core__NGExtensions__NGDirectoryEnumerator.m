--- ./sope-core/NGExtensions/NGDirectoryEnumerator.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/NGDirectoryEnumerator.m	2013-10-09 17:03:32.000000000 +0100
@@ -54,7 +54,7 @@
 {
   self->fileManager = _fm
     ? [_fm retain]
-    : [[NSFileManager defaultManager] retain];
+    : (id)[[NSFileManager defaultManager] retain];
 
   self->pathStack = [[NSMutableArray alloc] init];
   self->enumStack = [[NSMutableArray alloc] init];
