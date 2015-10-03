--- ./sope-appserver/NGObjWeb/SoObjects/SoComponent.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/SoObjects/SoComponent.m	2013-10-09 17:03:32.000000000 +0100
@@ -59,13 +59,13 @@
 }
 
 - (void)setResourceManager:(WOResourceManager *)_rm {
-  ASSIGN(self->soResourceManager, _rm);
+  ASSIGN(self->soResourceManager, (SoProductResourceManager*)_rm);
 }
 - (WOResourceManager *)resourceManager {
   if (self->soResourceManager != nil)
     return self->soResourceManager;
   
-  self->soResourceManager = [[[self componentProduct] resourceManager] retain];
+  self->soResourceManager = (SoProductResourceManager*)[[[self componentProduct] resourceManager] retain];
   if (self->soResourceManager)
     return self->soResourceManager;
   
