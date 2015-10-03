--- ./sope-core/NGExtensions/NGStack.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/NGStack.m	2013-10-09 17:03:32.000000000 +0100
@@ -222,7 +222,7 @@
   return [NSString stringWithFormat:
                      @"<%@[0x%p] capacity=%u SP=%u count=%u content=%s>",
                      NSStringFromClass([self class]), self,
-                     [self capacity], [self stackPointer], [self count],
+                     (int)[self capacity], (int)[self stackPointer], (int)[self count],
                      [[[self toArray] description] cString]];
 }
 
@@ -298,7 +298,7 @@
   [self addObject:_obj];
 }
 - (id)pop {
-  unsigned lastIdx = ([self count] - 1);
+  NSInteger lastIdx = ([self count] - 1);
 
   if (lastIdx >= 0) {
     id element = [self objectAtIndex:lastIdx];
