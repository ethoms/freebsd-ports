--- SoObjects/SOGo/SOGoGroup.m.orig	2015-10-09 07:05:53.364848141 +0800
+++ SoObjects/SOGo/SOGoGroup.m	2015-10-09 11:05:52.535853113 +0800
@@ -135,7 +135,7 @@
 {
   NSArray *allSources;
   NGLdapEntry *entry;
-  NSObject <SOGoSource> *source;
+  NSObject <SOGoSource, SOGoDNSource> *source;
   id o;
   NSEnumerator *gclasses;
   NSString *gclass;
@@ -154,7 +154,7 @@
 
   for (i = 0; i < [allSources count]; i++)
     {
-      source = [[SOGoUserManager sharedUserManager] sourceWithID: [allSources objectAtIndex: i]];
+      source = (NSObject <SOGoSource, SOGoDNSource> *) [[SOGoUserManager sharedUserManager] sourceWithID: [allSources objectAtIndex: i]];
 
       // Our different sources might not all implements groups support
       if ([source respondsToSelector: theSelector])
