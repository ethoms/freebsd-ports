--- SoObjects/Contacts/SOGoContactFolders.m.orig	2015-10-09 17:53:48.355169269 +0800
+++ SoObjects/Contacts/SOGoContactFolders.m	2015-10-10 12:59:10.048433423 +0800
@@ -268,9 +268,9 @@
   SOGoUser *currentUser;
   id <SOGoSource> source;
 
-  if ([sourceID isEqualToString: @"personal"])
-    result = [NSException exceptionWithHTTPStatus: 403
-                                           reason: (@"folder '%@' cannot be deleted", sourceID)];
+  if ([sourceID isEqualToString: @"personal"]){
+    result = [NSException exceptionWithHTTPStatus: 403 reason: [NSString stringWithFormat: (@"folder '%@' cannot be deleted"), sourceID]];
+  }
   else
     {
       result = nil;
