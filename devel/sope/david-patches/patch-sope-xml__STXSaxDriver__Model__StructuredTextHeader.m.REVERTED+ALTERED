--- ./sope-xml/STXSaxDriver/Model/StructuredTextHeader.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/STXSaxDriver/Model/StructuredTextHeader.m	2013-10-09 17:03:32.000000000 +0100
@@ -66,13 +66,13 @@
 
   /* header specific */
 
-  if (self->_text) [ms appendFormat:@" text-len=%d", [self->_text length]];
+  if (self->_text) [ms appendFormat:@" text-len=%d", (int)[self->_text length]];
   if (self->level) [ms appendFormat:@" level=%i",    self->level];
   
   /* common stuff */
   
   if (self->_elements) 
-    [ms appendFormat:@" #elements=%d", [self->_elements count]];
+    [ms appendFormat:@" #elements=%d", (int)[self->_elements count]];
 
   if (self->_delegate) {
     [ms appendFormat:@" delegate=0x%p<%@>", 
