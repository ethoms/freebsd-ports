--- ./sope-appserver/NGObjWeb/Associations/WOScriptAssociation.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/Associations/WOScriptAssociation.m	2013-10-09 17:03:32.000000000 +0100
@@ -125,7 +125,7 @@
       v = [v substringToIndex:9];
       v = [v stringByApplyingCEscaping];
       [str appendString:v];
-      [str appendFormat:@"...[len=%i]", [self->script length]];
+      [str appendFormat:@"...[len=%i]", (int)[self->script length]];
   }
   else {
       v = [v stringByApplyingCEscaping];
