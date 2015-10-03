--- ./sope-xml/XmlRpc/XmlRpcSaxHandler.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/XmlRpc/XmlRpcSaxHandler.m	2013-10-09 17:03:32.000000000 +0100
@@ -427,7 +427,7 @@
   if ([self->params count] > 1) {
     if (doDebug) {
       NSLog(@"%s:   has more than one params (%i)!", __PRETTY_FUNCTION__, 
-      [self->params count]);
+      (int)[self->params count]);
     }
     self->invalidCall = YES;
   }
