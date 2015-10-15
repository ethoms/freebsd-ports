--- ./sope-mime/NGImap4/NGImap4Context.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGImap4/NGImap4Context.m	2013-10-09 17:03:32.000000000 +0100
@@ -944,8 +944,7 @@
         [self serverName],
         [self serverKind],
         [self serverVersion],
-        [self serverSubVersion],
-        [self serverTag]];
+        [self serverSubVersion]];
   
   if (self->syncMode)
     [ms appendString:@" syncmode"];
