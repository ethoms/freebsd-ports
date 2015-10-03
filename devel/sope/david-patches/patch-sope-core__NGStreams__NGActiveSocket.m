--- ./sope-core/NGStreams/NGActiveSocket.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGStreams/NGActiveSocket.m	2013-10-09 17:03:32.000000000 +0100
@@ -410,7 +410,7 @@
   if ([self isConnected]) {
     [[[NGSocketAlreadyConnectedException alloc]
               initWithReason:@"Could not connected: socket is already connected"
-              socket:self address:self->remoteAddress] raise];
+              socket:self] raise];
     return NO;
   }
 
@@ -748,10 +748,7 @@
     if ((readResult < 0) && (errno == EINVAL)) {
       NSLog(@"%s: invalid argument in NGDescriptorRecv(%i, 0x%p, %i, %i)",
             __PRETTY_FUNCTION__,
-            self->fd, _buf, _len, 0,
-            (self->receiveTimeout == 0.0)
-            ? -1 // block until data
-            : (int)(self->receiveTimeout * 1000.0));
+            self->fd, _buf, _len, 0);
     }
 #endif
     
