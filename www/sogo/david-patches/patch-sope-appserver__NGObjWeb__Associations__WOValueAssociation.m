--- ./sope-appserver/NGObjWeb/Associations/WOValueAssociation.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/Associations/WOValueAssociation.m	2013-10-09 17:03:32.000000000 +0100
@@ -161,7 +161,7 @@
       v = [v substringToIndex:9];
       v = [v stringByApplyingCEscaping];
       [str appendString:v];
-      [str appendFormat:@"...[len=%i]", [self->value length]];
+      [str appendFormat:@"...[len=%i]", (int)[self->value length]];
     }
     else {
       v = [v stringByApplyingCEscaping];
