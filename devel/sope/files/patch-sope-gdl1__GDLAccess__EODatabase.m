--- ./sope-gdl1/GDLAccess/EODatabase.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EODatabase.m	2013-10-09 17:03:32.000000000 +0100
@@ -185,7 +185,7 @@
   if ([self hasOpenChannels]) {
     [NSException raise:NSInvalidArgumentException
 		 format:
-              @"EODatabase:%x: All channels must be closed when changing "
+              @"EODatabase:%@: All channels must be closed when changing "
               @"uniquing mode in the EODatabase, "
               @"in [EODatabase setUniquesObjects:]",
 		 self];
@@ -203,7 +203,7 @@
   if ([self hasOpenChannels]) {
     [NSException raise:NSInvalidArgumentException
 		 format:
-              @"EODatabase:%x: All channels must be closed when changing "
+              @"EODatabase:%@: All channels must be closed when changing "
               @"snapshoting mode in the EODatabase, "
               @"in [EODatabase setKeepsSnapshots:]",
 		 self];
@@ -328,14 +328,14 @@
   if (_object == nil) {
     [NSException raise:NSInvalidArgumentException
 		 format:
-		   @"EODatabase:%x: Cannot record null object, "
+		   @"EODatabase:%@: Cannot record null object, "
   		   @"in [EODatabase recordObject:primaryKey:entity:snapshot:]",
 		   self];
   }
   if ((_entity == nil) && self->flags.isUniquingObjects) {
     [NSException raise:NSInvalidArgumentException
 		 format:
-              @"EODatabase:%x: Cannot record object with null entity "
+              @"EODatabase:%@: Cannot record object with null entity "
               @"when the database is uniquing objects, "
               @"in [EODatabase recordObject:primaryKey:entity:snapshot:]",
 		 self];
@@ -344,7 +344,7 @@
   if ((_key == nil) && self->flags.isUniquingObjects) {
     [NSException raise:NSInvalidArgumentException
 		 format:
-              @"EODatabase:%x: Cannot record object with null key "
+              @"EODatabase:%@: Cannot record object with null key "
               @"when the database is uniquing objects, "
               @"in [EODatabase recordObject:primaryKey:entity:snapshot:]",
 		 self];
@@ -352,7 +352,7 @@
   if ((_snapshot == nil) && self->flags.isKeepingSnapshots) {
     [NSException raise:NSInvalidArgumentException
 		 format:
-              @"EODatabase:%x: Cannot record object with null snapshot "
+              @"EODatabase:%@: Cannot record object with null snapshot "
               @"when the database is keeping snapshots, "
               @"in [EODatabase recordObject:primaryKey:entity:snapshot:]",
 		 self];
@@ -408,7 +408,7 @@
 
 - (void)reportError:(NSString*)error {
   if (self->flags.isLoggingWarnings)
-    NSLog(@"EODatabase:%x:%@", self, error);
+    NSLog(@"EODatabase:%@:%@", self, error);
 }
 
 @end /* EODatabase */
