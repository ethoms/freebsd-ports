--- SoObjects/SOGo/SOGoCacheGCSFolder.m.orig	2015-10-08 11:13:15.184779897 +0800
+++ SoObjects/SOGo/SOGoCacheGCSFolder.m	2015-10-08 11:17:04.335760701 +0800
@@ -364,7 +364,7 @@
   if (record)
     {
       if ([[record objectForKey: @"c_type"] intValue] == MAPIFolderCacheObject)
-        objectClass = isa;
+        objectClass = object_getClass(self);
       else
         objectClass = SOGoCacheGCSObjectK;
 
