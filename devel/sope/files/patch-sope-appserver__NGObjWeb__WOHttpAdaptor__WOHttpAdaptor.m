--- ./sope-appserver/NGObjWeb/WOHttpAdaptor/WOHttpAdaptor.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WOHttpAdaptor/WOHttpAdaptor.m	2013-10-09 17:03:32.000000000 +0100
@@ -427,7 +427,7 @@
 }
 
 - (NGActiveSocket *)_accept {
-  NGActiveSocket *connection;
+  id<NGActiveSocket>  connection;
   id<NGSocketAddress> remote;
 
   NS_DURING {
@@ -450,7 +450,7 @@
   }
   NS_ENDHANDLER;
 
-  return connection;
+  return (NGActiveSocket*)connection;
 }
 
 - (void)_handleConnection:(NGActiveSocket *)connection {
