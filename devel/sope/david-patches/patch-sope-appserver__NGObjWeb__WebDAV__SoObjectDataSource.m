--- ./sope-appserver/NGObjWeb/WebDAV/SoObjectDataSource.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WebDAV/SoObjectDataSource.m	2013-10-09 17:03:32.000000000 +0100
@@ -133,7 +133,7 @@
   queriedAttrNames = [_fs selectedWebDAVPropertyNames];
   
   while ((childKey = [[childKeys nextObject] stringValue]) != nil) {
-    NSDictionary *rec;
+    id           rec;
     NSException  *e;
     NSString     *childHref;
     id child = nil;
