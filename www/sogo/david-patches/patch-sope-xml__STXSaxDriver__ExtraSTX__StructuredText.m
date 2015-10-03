--- ./sope-xml/STXSaxDriver/ExtraSTX/StructuredText.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/STXSaxDriver/ExtraSTX/StructuredText.m	2013-10-09 17:03:32.000000000 +0100
@@ -513,7 +513,7 @@
   ms = [NSMutableString stringWithCapacity:128];
   [ms appendFormat:@"<0x%p[%@]:", self, NSStringFromClass([self class])];
   
-  if (self->_text) [ms appendFormat:@" text-len=%d", [self->_text length]];
+  if (self->_text) [ms appendFormat:@" text-len=%d", (int)[self->_text length]];
   if (self->_document)
     [ms appendFormat:@" document=%@", self->_document];
 
