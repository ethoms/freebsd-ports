--- ./sope-mime/NGImap4/NGImap4FolderGlobalID.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGImap4/NGImap4FolderGlobalID.m	2013-10-09 17:03:32.000000000 +0100
@@ -62,7 +62,7 @@
 
 /* comparison */
 
-- (unsigned)hash {
+- (NSUInteger)hash {
   return [self->absoluteName hash];
 }
 
