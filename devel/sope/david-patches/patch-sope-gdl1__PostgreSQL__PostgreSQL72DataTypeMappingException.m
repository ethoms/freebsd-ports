--- ./sope-gdl1/PostgreSQL/PostgreSQL72DataTypeMappingException.m.orig	2013-10-09 17:14:18.000000000 +0100
+++ ./sope-gdl1/PostgreSQL/PostgreSQL72DataTypeMappingException.m	2013-10-09 17:14:28.000000000 +0100
@@ -46,7 +46,7 @@
   typeName = _dt;
 
   if (typeName == nil)
-    typeName = [NSString stringWithFormat:@"Oid[%i]", _dt];
+    typeName = [NSString stringWithFormat:@"Oid[%i]", (int)_dt];
   
   // TODO: fix for Cocoa/gstep Foundation?
   [self setName:@"DataTypeMappingNotSupported"];
