--- ./sope-xml/STXSaxDriver/Model/StructuredTextBodyElement.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/STXSaxDriver/Model/StructuredTextBodyElement.m	2013-10-09 17:03:32.000000000 +0100
@@ -410,7 +410,7 @@
   unichar c;
   
   length = [_str length];
-  if (debugOn) NSLog(@"  find link block target: '%s'", _str);
+  if (debugOn) NSLog(@"  find link block target: '%@'", _str);
 
   c = [_str characterAtIndex:0];
   
@@ -460,7 +460,7 @@
     
     range.location = 0;
 
-    if (debugOn) NSLog(@"    range(0,%d)", range.length);
+    if (debugOn) NSLog(@"    range(0,%d)", (int)range.length);
     return range;
   }
   
@@ -965,7 +965,7 @@
   [ms appendFormat:@"<0x%p[%@]:", self, NSStringFromClass([self class])];
   
   if (self->_elements) 
-    [ms appendFormat:@" #elements=%d", [self->_elements count]];
+    [ms appendFormat:@" #elements=%d", (int)[self->_elements count]];
 
   if (self->_delegate) {
     [ms appendFormat:@" delegate=0x%p<%@>", 
