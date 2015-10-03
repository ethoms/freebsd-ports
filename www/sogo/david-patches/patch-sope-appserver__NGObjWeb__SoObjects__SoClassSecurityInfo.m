--- ./sope-appserver/NGObjWeb/SoObjects/SoClassSecurityInfo.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/SoObjects/SoClassSecurityInfo.m	2013-10-09 17:03:32.000000000 +0100
@@ -111,7 +111,7 @@
   va_end(va);
 }
 
-- (void)declareProtected:(NSString *)_perm:(NSString *)_firstName, ... {
+- (void)declareProtected:(NSString *)_perm :(NSString *)_firstName, ... {
   va_list  va;
   NSString *aname;
 
