--- UI/MailerUI/UIxMailMainFrame.m.orig	2015-10-12 03:31:38.716871414 +0800
+++ UI/MailerUI/UIxMailMainFrame.m	2015-10-12 03:32:31.963865693 +0800
@@ -627,7 +627,7 @@
 
 - (NSString *) columnsDisplayCount
 {
-  return [NSString stringWithFormat: @"%d", [[self columnsDisplayOrder] count]];
+  return [NSString stringWithFormat: @"%d", (int)[[self columnsDisplayOrder] count]];
 }
 
 - (void) setCurrentColumn: (NSDictionary *) newCurrentColumn
