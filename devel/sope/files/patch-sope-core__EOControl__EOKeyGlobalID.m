--- ./sope-core/EOControl/EOKeyGlobalID.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EOKeyGlobalID.m	2013-10-09 17:03:32.000000000 +0100
@@ -96,7 +96,7 @@
   if (_other == nil)  return NO;
   if (_other == self) return YES;
   otherKey = _other;
-  if (otherKey->isa   != self->isa)   return NO;
+  if (object_getClass(otherKey)   != object_getClass(self))   return NO;
   if (otherKey->count != self->count) return NO;
   if (![otherKey->entityName isEqualToString:self->entityName]) return NO;
   
