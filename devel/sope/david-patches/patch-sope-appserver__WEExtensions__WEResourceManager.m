--- ./sope-appserver/WEExtensions/WEResourceManager.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/WEExtensions/WEResourceManager.m	2013-10-09 17:03:32.000000000 +0100
@@ -620,7 +620,7 @@
     }
     [ms appendString:_name];
     [ms appendFormat: @"?lm=%u",
-        (NSUInteger) [lastModified timeIntervalSince1970]];
+        (unsigned) [lastModified timeIntervalSince1970]];
       
     url = ms;
     if (debugOn) [self debugWithFormat:@"FOUND: '%@'", url];
