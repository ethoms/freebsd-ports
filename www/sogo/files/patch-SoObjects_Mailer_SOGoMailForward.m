--- SoObjects/Mailer/SOGoMailForward.m.orig	2015-10-12 00:00:08.490746039 +0800
+++ SoObjects/Mailer/SOGoMailForward.m	2015-10-12 00:02:19.963732575 +0800
@@ -73,10 +73,10 @@
 
 - (NSString *) newLine
 {
-  NSString *rc = [NSString stringWithString: @" "];
+  NSString *rc = @" ";
   
   if (htmlComposition)
-    rc = [NSString stringWithString: @"<br/>"];
+    rc = @"<br/>";
 
   return rc;
 }
