--- ./sope-xml/SaxObjC/SaxAttributes.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/SaxObjC/SaxAttributes.m	2013-10-09 17:03:32.000000000 +0100
@@ -213,7 +213,7 @@
   NSUInteger i, c;
   
   s = [[NSMutableString alloc] init];
-  [s appendFormat:@"<%08X[%@]:", self, NSStringFromClass([self class])];
+  [s appendFormat:@"<%p[%@]:", self, NSStringFromClass([self class])];
   
   for (i = 0, c = [self count]; i < c; i++) {
     NSString *type;
