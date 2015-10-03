--- ./sope-core/NGExtensions/EOExt.subproj/EOKeyMapDataSource.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/EOExt.subproj/EOKeyMapDataSource.m	2013-10-09 17:03:32.000000000 +0100
@@ -111,7 +111,7 @@
     
     if ([obj isModified]) {
       if (self->map) {
-	NSLog(@"%s: don't know how to back-map modified object: %@", 
+	NSLog(@"don't know how to back-map modified object: %@", 
 	      _object);
 #if NeXT_Foundation_LIBRARY
     [self doesNotRecognizeSelector:_cmd];
@@ -265,7 +265,7 @@
   NSAutoreleasePool *pool;
   NSArray *a;
   
-  pool = [[NSArray alloc] init];
+  pool = [[NSAutoreleasePool alloc] init];
   a = [[NSArray alloc] initWithObjectsFromEnumerator:[self fetchEnumerator]];
   [pool release];
   return [a autorelease];
