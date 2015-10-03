--- ./sope-xml/XmlRpc/XmlRpcDecoder.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/XmlRpc/XmlRpcDecoder.m	2013-10-09 17:03:32.000000000 +0100
@@ -272,7 +272,7 @@
   
   if (doDebug) {
     NSLog(@"%s: begin (data: %i bytes, nesting: %i)", __PRETTY_FUNCTION__, 
-          [self->data length], self->nesting);
+          (int)[self->data length], self->nesting);
   }
   if ([self->data length] == 0) return nil;
   
