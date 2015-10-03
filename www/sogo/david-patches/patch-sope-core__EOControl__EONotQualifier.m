--- ./sope-core/EOControl/EONotQualifier.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EONotQualifier.m	2013-10-09 17:03:32.000000000 +0100
@@ -48,7 +48,7 @@
   return self->qualifier;
 }
 
-- (unsigned int)count {
+- (NSUInteger)count {
   return self->qualifier ? 1 : 0;
 }
 - (NSArray *)subqualifiers {
