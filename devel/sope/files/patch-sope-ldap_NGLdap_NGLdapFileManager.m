--- sope-ldap/NGLdap/NGLdapFileManager.m.orig	2015-10-08 07:57:03.797588319 +0800
+++ sope-ldap/NGLdap/NGLdapFileManager.m	2015-10-08 07:59:45.636578548 +0800
@@ -317,7 +317,7 @@
   short count;
   
   if ((dn = [self dnForPath:_path]) == nil)
-    return NO;
+    return nil;
   
   entry = [self->connection entryAtDN:dn attributes:fileInfoAttrs];
   if (entry == nil)
@@ -432,7 +432,7 @@
   NGLdapEntry     *entry;
   
   if ((dn = [self dnForPath:_path]) == nil)
-    return NO;
+    return nil;
   
   entry = [self->connection entryAtDN:dn attributes:nil];
   if (entry == nil)
