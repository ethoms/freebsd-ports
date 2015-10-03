--- ./sope-core/NGExtensions/NGBitSet.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/NGBitSet.m	2013-10-09 17:03:32.000000000 +0100
@@ -222,7 +222,7 @@
 }
 
 - (NSUInteger)lastMember {
-  register unsigned int element;
+  NSInteger element;
 
   for (element = (self->universe - 1); element >= 0; element--) {
     if (NGTestBit(element))
