--- sope-mime/NGImap4/NGImap4Functions.m.orig	2015-10-08 07:53:03.356603708 +0800
+++ sope-mime/NGImap4/NGImap4Functions.m	2015-10-08 07:48:01.460627308 +0800
@@ -129,7 +129,7 @@
       if (debugFolderLookup) {
 	NSLog(@"  FAILED: %@", [[_parent context] lastException]);
       }
-      return NO;
+      return nil;
     }
   }
   if (debugFolderLookup) NSLog(@"  NOT FOUND.");
