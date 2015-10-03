--- ./sope-mime/NGMail/NGMailAddress.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGMail/NGMailAddress.m	2013-10-09 17:03:32.000000000 +0100
@@ -66,7 +66,7 @@
   return NO;
 }
 
-- (unsigned)hash {
+- (NSUInteger)hash {
   return [self->address hash];
 }
 
