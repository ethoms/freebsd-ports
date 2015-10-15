--- Tools/SOGoToolRestore.m.orig	2015-10-13 23:45:35.646896281 +0800
+++ Tools/SOGoToolRestore.m	2015-10-13 23:46:38.256887925 +0800
@@ -574,6 +574,7 @@
           NSLog (@"  %@ (%@)",
                  folderKey, [currentFolder objectForKey: @"displayname"]);
         }
+      rc = YES;
     }
   else
     {
