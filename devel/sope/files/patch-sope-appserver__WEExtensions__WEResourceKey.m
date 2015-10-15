--- ./sope-appserver/WEExtensions/WEResourceKey.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/WEExtensions/WEResourceKey.m	2013-10-09 17:03:32.000000000 +0100
@@ -65,7 +65,7 @@
 
 /* equality */
 
-- (unsigned)hash {
+- (NSUInteger)hash {
   if (self->hashValue == 0) {
     /* don't know whether this is smart, Nat! needs to comment ;-) */
     self->hashValue = [self->name hash];
