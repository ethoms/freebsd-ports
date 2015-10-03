--- ./sope-appserver/NGObjWeb/DynamicElements/WOGenericElement.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/DynamicElements/WOGenericElement.m	2013-10-09 17:03:32.000000000 +0100
@@ -77,10 +77,9 @@
   [children autorelease];
   
   /* construct self ... */
-  self = [(WODynamicElement *)self initWithName:name 
+  return (WOGenericElement*)[(WODynamicElement *)self initWithName:name 
                                    associations:assocs 
                                    contentElements:children];
-  return self;
 }
 
 - (BOOL)_isASCIIString:(NSString *)_s {
