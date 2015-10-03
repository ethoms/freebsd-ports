--- ./sope-xml/XmlRpc/XmlRpcMethodCall.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/XmlRpc/XmlRpcMethodCall.m	2013-10-09 17:03:32.000000000 +0100
@@ -136,7 +136,7 @@
   s = [NSMutableString stringWithFormat:@"<0x%p[%@]: ",
                          self, NSStringFromClass([self class])];
   [s appendFormat:@"method=%@", [self methodName]];
-  [s appendFormat:@" #paras=%d", [self->parameters count]];
+  [s appendFormat:@" #paras=%d", (int)[self->parameters count]];
   [s appendString:@">"];
   return s;
 }
