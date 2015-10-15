--- UI/MainUI/SOGoMicrosoftActiveSyncActions.m.orig	2015-09-17 02:41:32.000000000 +0800
+++ UI/MainUI/SOGoMicrosoftActiveSyncActions.m	2015-10-14 07:23:29.165999648 +0800
@@ -30,6 +30,9 @@
 #import <NGObjWeb/WORequest.h>
 #import <NGObjWeb/WOResponse.h>
 
+#import <Common/WODirectAction+SOGo.h>
+#import <ActiveSync/SOGoActiveSyncDispatcher.h>
+
 @interface SOGoMicrosoftActiveSyncActions : WODirectAction
 @end
 
@@ -47,7 +50,7 @@
   id dispatcher;
   Class clazz;
 
-  request = [context request];
+  request = (WORequest *)[context request];
   response = [self responseWithStatus: 200];
 
   bundle = [NSBundle bundleForClass: NSClassFromString(@"ActiveSyncProduct")];
