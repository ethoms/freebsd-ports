--- ./sope-xml/XmlRpc/NSNotification+XmlRpcCoding.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/XmlRpc/NSNotification+XmlRpcCoding.m	2013-10-09 17:03:32.000000000 +0100
@@ -30,7 +30,7 @@
 }
 
 + (id)decodeObjectWithXmlRpcCoder:(XmlRpcDecoder *)_coder {
-  self = [NSNotification notificationWithName:
+  self = (id)[NSNotification notificationWithName:
                            [_coder decodeStringForKey:@"name"]
                          object:[_coder decodeObjectForKey:@"object"]
                          userInfo:[_coder decodeStructForKey:@"userInfo"]];
