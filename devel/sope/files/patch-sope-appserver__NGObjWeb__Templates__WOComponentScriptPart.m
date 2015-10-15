--- ./sope-appserver/NGObjWeb/Templates/WOComponentScriptPart.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/Templates/WOComponentScriptPart.m	2013-10-09 17:03:32.000000000 +0100
@@ -112,7 +112,7 @@
       [ms appendFormat:@":%i", self->startLine];
   }
   else if (self->startLine > 0)
-    [ms appendFormat:@" line=%@", self->startLine];
+    [ms appendFormat:@" line=%u", self->startLine];
 
   if ([self->script length] == 0)
     [ms appendString:@" no script"];
