--- UI/MailPartViewers/UIxMailPartViewer.m.orig	2015-10-12 02:39:07.719086705 +0800
+++ UI/MailPartViewers/UIxMailPartViewer.m	2015-10-12 02:41:14.554075510 +0800
@@ -270,7 +270,7 @@
   if ([filename length])
     // We replace any slash by a dash since Apache won't allow encoded slashes by default.
     // See http://httpd.apache.org/docs/2.2/mod/core.html#allowencodedslashes
-    filename = [filename stringByReplacingString: @"/" withString: @"-"];
+    filename = [[filename stringByReplacingString: @"/" withString: @"-"] mutableCopy];
   else
     [filename appendFormat: @"%@-%@",
 	      [self labelForKey: @"Untitled"],
