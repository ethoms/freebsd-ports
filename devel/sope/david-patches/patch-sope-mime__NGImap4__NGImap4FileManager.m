--- ./sope-mime/NGImap4/NGImap4FileManager.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGImap4/NGImap4FileManager.m	2013-10-09 17:03:32.000000000 +0100
@@ -225,7 +225,7 @@
   if ((folder = [self _lookupFolderAtPathString:_path]) == nil)
     return NO;
 
-  ASSIGN(self->currentFolder, folder);
+  ASSIGN(self->currentFolder, (id)folder);
 
   return YES;
 }
