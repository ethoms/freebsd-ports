--- ./sope-gdl1/GDLAccess/EOModel.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EOModel.m	2013-10-09 17:03:32.000000000 +0100
@@ -255,7 +255,7 @@
   NSMutableDictionary *model = [NSMutableDictionary dictionaryWithCapacity:64];
   int i, count;
     
-  [model setObject:[[NSNumber numberWithInt:[isa version]] stringValue]
+  [model setObject:[[NSNumber numberWithInt:[object_getClass(self) version]] stringValue]
 	 forKey:@"EOModelVersion"];
   if (name)
         [model setObject:name forKey:@"name"];
@@ -416,7 +416,7 @@
   if ((s = [self adaptorName]))      [ms appendFormat:@" adaptor=%@", s];
   if ((s = [self adaptorClassName])) [ms appendFormat:@" adaptor-class=%@", s];
   
-  [ms appendFormat:@" #entities=%d", [self->entities count]];
+  [ms appendFormat:@" #entities=%d", (int)[self->entities count]];
   
   [ms appendString:@">"];
   return ms;
