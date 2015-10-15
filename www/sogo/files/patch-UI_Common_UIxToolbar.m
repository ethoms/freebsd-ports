--- UI/Common/UIxToolbar.m.orig	2015-10-12 01:26:49.548386836 +0800
+++ UI/Common/UIxToolbar.m	2015-10-12 01:29:17.906393163 +0800
@@ -166,7 +166,7 @@
     [self errorWithFormat:
             @"not toolbar configuration found on SoObject: %@ (%@)",
             [self clientObject], [[self clientObject] soClass]];
-    toolbarConfig = [[NSNull null] retain];
+    toolbarConfig = (NSArray *)[[NSNull null] retain];
     return nil;
   }
 
