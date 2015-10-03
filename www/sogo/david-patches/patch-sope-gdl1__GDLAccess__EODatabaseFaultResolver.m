--- ./sope-gdl1/GDLAccess/EODatabaseFaultResolver.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EODatabaseFaultResolver.m	2013-10-09 17:03:32.000000000 +0100
@@ -191,7 +191,7 @@
 
 - (NSString *)descriptionForObject:(id)_fault {
   return [NSString stringWithFormat:
-                   @"<Array fault 0x%x (qualifier=%@, order=%@, channel=%@)>",
+                   @"<Array fault %p (qualifier=%@, order=%@, channel=%@)>",
                    _fault, qualifier, fetchOrder, channel];
 }
 
@@ -302,7 +302,7 @@
 
 - (NSString *)descriptionForObject:(id)_fault {
   return [NSString stringWithFormat:
-                     @"<Object fault 0x%X "
+                     @"<Object fault %p "
                      @"(class=%@, entity=%@, key=%@, channel=%@)>",
                      _fault,
                      NSStringFromClass(targetClass), 
