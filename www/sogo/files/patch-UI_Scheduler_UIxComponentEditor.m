--- UI/Scheduler/UIxComponentEditor.m.orig	2015-10-13 08:34:49.429762100 +0800
+++ UI/Scheduler/UIxComponentEditor.m	2015-10-13 08:39:58.917637567 +0800
@@ -2472,7 +2472,7 @@
   content = [NSMutableString string];
   response = [context response];
 
-  [content appendFormat: [[self clientObject] contentAsString]];
+  [content appendFormat: @"%@", [[self clientObject] contentAsString]];
   [response setHeader: @"text/plain; charset=utf-8" 
             forKey: @"content-type"];
   [response appendContentString: content];
