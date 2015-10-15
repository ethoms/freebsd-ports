--- ./sope-mime/NGImap4/NGImap4Message.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGImap4/NGImap4Message.m	2013-10-09 17:03:32.000000000 +0100
@@ -243,8 +243,8 @@
 }
 
 - (void)markUnread {
-  if ([self isRead]);
-  [self removeFlag:@"seen"];
+  if ([self isRead])
+    [self removeFlag:@"seen"];
 }
 
 - (BOOL)isFlagged {
@@ -345,7 +345,7 @@
   return YES;
 }
 
-- (unsigned)hash {
+- (NSUInteger)hash {
   return self->uid;
 }
 
