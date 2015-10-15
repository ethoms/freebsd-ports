--- sope-ldap/NGLdap/NGLdapGlobalID.m.orig	2015-10-08 07:30:33.455696497 +0800
+++ sope-ldap/NGLdap/NGLdapGlobalID.m	2015-10-08 07:34:45.512679456 +0800
@@ -53,7 +53,7 @@
 
 /* equality */
 
-- (unsigned)hash {
+- (NSUInteger)hash {
   return [self->dn hash] + [self->host hash];
 }
 
