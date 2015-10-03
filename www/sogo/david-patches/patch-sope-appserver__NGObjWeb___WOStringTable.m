--- ./sope-appserver/NGObjWeb/_WOStringTable.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/_WOStringTable.m	2013-10-09 17:03:32.000000000 +0100
@@ -162,7 +162,7 @@
   [ms appendFormat:@"<0x%p[%@]: ", self, NSStringFromClass([self class])];
   
   if (self->path)     [ms appendFormat:@" path='%@'",   self->path];
-  if (self->data)     [ms appendFormat:@" strings=#%d", [self->data count]];
+  if (self->data)     [ms appendFormat:@" strings=#%d", (int)[self->data count]];
   if (self->lastRead) [ms appendFormat:@" loaddate=%@", self->lastRead];
   
   [ms appendString:@">"];
