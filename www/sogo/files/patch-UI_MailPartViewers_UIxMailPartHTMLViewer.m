--- UI/MailPartViewers/UIxMailPartHTMLViewer.m.orig	2015-10-12 02:42:22.519071553 +0800
+++ UI/MailPartViewers/UIxMailPartHTMLViewer.m	2015-10-12 03:25:07.395896369 +0800
@@ -551,9 +551,9 @@
                   else
                     skipAttribute = YES;
                 }
-              else if ([name isEqualToString: @"background"] ||
+              else if (([name isEqualToString: @"background"] ||
                        ([name isEqualToString: @"data"]
-                        || [name isEqualToString: @"classid"])
+                        || [name isEqualToString: @"classid"]))
                        && [lowerName isEqualToString: @"object"])
                 {
                   value = [_attributes valueAtIndex: count];
@@ -741,7 +741,7 @@
 
 /* SaxLexicalHandler */
 - (void) comment: (unichar *) _chars
-          length: (NSUInteger) _len
+          length: (int) _len
 {
   showWhoWeAre();
   if (inStyle)
@@ -807,7 +807,7 @@
     }
   [dump appendFormat: @"--- end ---\n"];
 
-  NSLog(dump);
+  NSLog(@"%@", dump);
   [dump release];
 }
 
