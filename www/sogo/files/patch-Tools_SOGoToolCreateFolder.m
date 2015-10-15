--- Tools/SOGoToolCreateFolder.m.orig	2015-10-13 09:24:13.755455090 +0800
+++ Tools/SOGoToolCreateFolder.m	2015-10-13 09:42:15.600381213 +0800
@@ -97,7 +97,7 @@
   rc = [self createFolder: folder withFM: fm];
   if (!rc)
     {
-      NSLog (@"Create directory failed at path %s", folder);
+      NSLog (@"Create directory failed at path %@", folder);
       return NO;
     }
 
