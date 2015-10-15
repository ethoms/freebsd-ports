--- sope-appserver/NGObjWeb/WebDAV/SoObjectDataSource.m.orig	2015-09-17 02:26:49.000000000 +0800
+++ sope-appserver/NGObjWeb/WebDAV/SoObjectDataSource.m	2015-10-08 07:03:45.997807380 +0800
@@ -137,7 +137,7 @@
   pool = [[NSAutoreleasePool alloc] init];
   i=0;
   while ((childKey = [[childKeys nextObject] stringValue]) != nil) {
-    NSDictionary *rec;
+    id rec;
     NSException  *e;
     NSString     *childHref;
     id child = nil;
