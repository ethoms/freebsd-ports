--- SoObjects/SOGo/SOGoContentObject.m.orig	2015-10-08 12:31:02.045459297 +0800
+++ SoObjects/SOGo/SOGoContentObject.m	2015-10-08 12:43:44.313403665 +0800
@@ -94,7 +94,7 @@
 {
   [self subclassResponsibility: _cmd];
   
-  return nil;
+  return (Class *) nil;
 }
 
 - (void) _setRecord: (NSDictionary *) objectRecord
@@ -254,6 +254,9 @@
 - (NSException *) moveToFolder: (SOGoGCSFolder *) newFolder
 {
   [self subclassResponsibility: _cmd];
+
+  // TODO: Add exception handling code and return it
+  return (NSException *) nil;
 }
 
 - (NSException *) delete
@@ -345,7 +348,7 @@
 
       /* attempt a save */
       
-      error = [self saveComponent: [[self parsingClass] parseSingleFromSource: [rq contentAsString]]
+      error = [self saveComponent: [(id)[self parsingClass] parseSingleFromSource: [rq contentAsString]]
                       baseVersion: baseVersion];
       if (error)
 	response = (WOResponse *) error;
@@ -410,7 +413,7 @@
   else
     length = 0;
 
-  return [NSString stringWithFormat: @"%u", length];
+  return [NSString stringWithFormat: @"%u", (unsigned int)length];
 }
 
 - (NSException *) davMoveToTargetObject: (id) _target
