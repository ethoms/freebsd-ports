--- UI/Contacts/UIxContactActions.m.orig	2015-10-12 01:31:58.756363563 +0800
+++ UI/Contacts/UIxContactActions.m	2015-10-12 02:04:25.062227766 +0800
@@ -141,7 +141,7 @@
   content = [NSMutableString string];
   response = [context response];
 
-  [content appendFormat: [[self clientObject] contentAsString]];
+  [content appendFormat: @"%@", [[self clientObject] contentAsString]];
   [response setHeader: @"text/plain; charset=utf-8" 
             forKey: @"content-type"];
   [response appendContentString: content];
