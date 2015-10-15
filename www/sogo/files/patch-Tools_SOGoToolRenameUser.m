--- Tools/SOGoToolRenameUser.m.orig	2015-10-13 09:12:17.759505521 +0800
+++ Tools/SOGoToolRenameUser.m	2015-10-13 09:14:38.742494299 +0800
@@ -148,7 +148,7 @@
   if (sqlError)
     {
       [ac rollbackTransaction];
-      NSLog([sqlError reason]);
+      NSLog(@"%@", [sqlError reason]);
     }
   else
     rc = [ac commitTransaction];
@@ -201,7 +201,7 @@
   if (sqlError)
     {
       [ac rollbackTransaction];
-      NSLog([sqlError reason]);
+      NSLog(@"%@", [sqlError reason]);
     }
   else
     rc = [ac commitTransaction];
