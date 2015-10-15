--- UI/Scheduler/UIxCalViewPrint.m.orig	2015-10-13 06:40:49.935130156 +0800
+++ UI/Scheduler/UIxCalViewPrint.m	2015-10-13 06:45:36.482115783 +0800
@@ -49,6 +49,7 @@
 - (void) dealloc
 {
   [item release];
+  [super dealloc];
 }
 
 - (void) setItem: (NSString *) newItem
@@ -68,7 +69,7 @@
 
 - (NSString *) itemPrintLayoutText
 {
-  return [self labelForKey: [NSString stringWithFormat: item]];
+  return [self labelForKey: [NSString stringWithFormat: @"%@", item]];
 }
 
 //
