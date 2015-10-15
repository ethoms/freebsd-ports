--- sope-ldap/NGLdap/NGLdapConnection.m.orig	2015-10-08 07:27:02.048712065 +0800
+++ sope-ldap/NGLdap/NGLdapConnection.m	2015-10-08 07:27:54.118710202 +0800
@@ -1223,7 +1223,7 @@
   
   if ([self doesUseCache]) {
     [s appendFormat:@" cache[to=%.2fs,mem=%i]",
-         [self cacheTimeout], [self cacheMaxMemoryUsage]];
+         [self cacheTimeout], (int)[self cacheMaxMemoryUsage]];
   }
   
   [s appendString:@">"];
