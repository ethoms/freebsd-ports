--- ./sope-core/EOControl/EOGlobalID.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EOGlobalID.m	2013-10-09 17:03:32.000000000 +0100
@@ -95,7 +95,7 @@
 }
 
 - (id)init {
-  [self->isa assignGloballyUniqueBytes:&(self->idbuffer[0])];
+  [object_getClass(self) assignGloballyUniqueBytes:&(self->idbuffer[0])];
   return self;
 }
 
