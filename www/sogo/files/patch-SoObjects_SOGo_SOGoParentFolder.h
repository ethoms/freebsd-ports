--- SoObjects/SOGo/SOGoParentFolder.h.orig	2015-10-08 14:18:51.757012268 +0800
+++ SoObjects/SOGo/SOGoParentFolder.h	2015-10-08 14:23:51.190988564 +0800
@@ -45,6 +45,7 @@
 
 - (NSException *) appendPersonalSources;
 - (void) removeSubFolder: (NSString *) subfolderName;
+- (NSException *) appendCollectedSources;
 
 - (void) setBaseOCSPath: (NSString *) newOCSPath;
 
