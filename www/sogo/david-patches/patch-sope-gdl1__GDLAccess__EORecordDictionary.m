--- ./sope-gdl1/GDLAccess/EORecordDictionary.m.orig	2013-10-09 17:06:13.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EORecordDictionary.m	2013-10-09 17:08:07.000000000 +0100
@@ -55,7 +55,7 @@
 - (id)init  {
   RELEASE(self);
   if (emptyDict == nil) emptyDict = [[NSDictionary alloc] init];
-  return [emptyDict retain];
+  return (id)[emptyDict retain];
 }
 
 - (id)initWithObjects:(id *)_objects forKeys:(id *)_keys 
@@ -64,12 +64,12 @@
   if (_count == 0) {
         RELEASE(self);
 	if (emptyDict == nil) emptyDict = [[NSDictionary alloc] init];
-	return [emptyDict retain];
+	return (id)[emptyDict retain];
   }
   
   if (_count == 1) {
         RELEASE(self);
-        return [[NSDictionary alloc]
+        return (id)[[NSDictionary alloc]
                               initWithObjects:_objects forKeys:_keys
                               count:_count];
   }
