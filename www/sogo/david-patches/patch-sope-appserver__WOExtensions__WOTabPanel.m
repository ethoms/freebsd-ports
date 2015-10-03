--- ./sope-appserver/WOExtensions/WOTabPanel.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/WOExtensions/WOTabPanel.m	2013-10-09 17:03:32.000000000 +0100
@@ -259,7 +259,7 @@
                      inComponent:sComponent];
   
   [_response appendContentString:@"</tr><tr><td colspan=\""];
-  s = [[NSString alloc] initWithFormat:@"%d",[ttabs count]];
+  s = [[NSString alloc] initWithFormat:@"%d",(int)[ttabs count]];
   [_response appendContentString:s];
   [s release];
   [_response appendContentString:@"\" bgcolor=\""];
