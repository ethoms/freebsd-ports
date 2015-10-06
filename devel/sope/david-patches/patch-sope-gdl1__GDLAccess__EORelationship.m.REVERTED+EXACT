--- ./sope-gdl1/GDLAccess/EORelationship.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EORelationship.m	2013-10-09 17:03:32.000000000 +0100
@@ -84,7 +84,7 @@
 }
 
 // Is equal only if same name; used to make aliasing ordering stable
-- (unsigned)hash {
+- (NSUInteger)hash {
   return [self->name hash];
 }
 
@@ -405,7 +405,7 @@
     NS_DURING
       [self setDefinition:self->definition];
     NS_HANDLER {
-      NSLog([localException reason]);
+      NSLog(@"%@", [localException reason]);
       [[self->entity model] errorInReading];
     }
     NS_ENDHANDLER;
