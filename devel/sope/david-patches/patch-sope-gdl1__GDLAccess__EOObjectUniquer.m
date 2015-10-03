--- ./sope-gdl1/GDLAccess/EOObjectUniquer.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EOObjectUniquer.m	2013-10-09 17:03:32.000000000 +0100
@@ -49,7 +49,7 @@
 
 static NSString* uniqDescription(NSMapTable *t, EOUniquerRecord* rec) {
   return [NSString stringWithFormat:
-                     @"<<pkey:%08x entity:%08x object:%08x snapshot:%08x>>",
+                     @"<<pkey:%p entity:%p object:%p snapshot:%p>>",
                      rec->pkey, rec->entity, rec->object, rec->snapshot];
 }
 
