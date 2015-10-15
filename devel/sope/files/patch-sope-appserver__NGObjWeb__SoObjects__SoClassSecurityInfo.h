--- ./sope-appserver/NGObjWeb/SoObjects/SoClassSecurityInfo.h.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/SoObjects/SoClassSecurityInfo.h	2013-10-09 17:03:32.000000000 +0100
@@ -101,7 +101,7 @@
 - (BOOL)hasDefaultAccessDeclaration;
 - (void)declarePublic:(NSString *)_firstName, ...;
 - (void)declarePrivate:(NSString *)_firstName, ...;
-- (void)declareProtected:(NSString *)_perm:(NSString *)_firstName, ...;
+- (void)declareProtected:(NSString *)_perm :(NSString *)_firstName, ...;
 
 /* object security */
 
