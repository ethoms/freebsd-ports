--- SOPE/GDLContentStore/GCSChannelManager.m.orig	2015-10-08 10:23:07.630990957 +0800
+++ SOPE/GDLContentStore/GCSChannelManager.m	2015-10-08 10:23:39.389981097 +0800
@@ -500,7 +500,7 @@
   ms = [NSMutableString stringWithCapacity: 256];
   [ms appendFormat: @"<0x%p[%@]: ", self, NSStringFromClass ([self class])];
 
-  [ms appendFormat: @" #adaptors=%d", [urlToAdaptor count]];
+  [ms appendFormat: @" #adaptors=%d", (int)[urlToAdaptor count]];
 
   [ms appendString: @">"];
   return ms;
