--- ./sope-appserver/NGObjWeb/WOResponse.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WOResponse.m	2013-10-09 17:03:32.000000000 +0100
@@ -305,7 +305,7 @@
     if ([data length] == 0)
       [ms appendString:@" empty-content"];
     else
-      [ms appendFormat:@" content-size=%i", [data length]];
+      [ms appendFormat:@" content-size=%i", (int)[data length]];
   }
   else
     [ms appendString:@" no-content"];
