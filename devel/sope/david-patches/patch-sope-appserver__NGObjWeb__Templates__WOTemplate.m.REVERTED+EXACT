--- ./sope-appserver/NGObjWeb/Templates/WOTemplate.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/Templates/WOTemplate.m	2013-10-09 17:03:32.000000000 +0100
@@ -133,7 +133,7 @@
       [ms appendFormat:@" url=%@", [self->url absoluteString]];
   }
   if (self->subcomponentInfos)
-    [ms appendFormat:@" #subcomponents=%i", [self->subcomponentInfos count]];
+    [ms appendFormat:@" #subcomponents=%i", (int)[self->subcomponentInfos count]];
   
   [ms appendString:@">"];
   return ms;
