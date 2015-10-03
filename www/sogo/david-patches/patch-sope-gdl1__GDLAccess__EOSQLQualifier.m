--- ./sope-gdl1/GDLAccess/EOSQLQualifier.m.orig	2013-10-09 17:08:56.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EOSQLQualifier.m	2013-10-09 17:09:36.000000000 +0100
@@ -39,6 +39,7 @@
 #include <EOControl/EOKeyValueCoding.h>
 #include <EOControl/EONull.h>
 #import "EOQualifierScanner.h"
+#import "NGExtensions/NSException+misc.h"
 
 #if LIB_FOUNDATION_LIBRARY
 #  include <extensions/DefaultScannerHandler.h>
@@ -468,7 +469,7 @@
 - (id)copyWithZone:(NSZone*)zone {
   EOSQLQualifier* copy = nil;
 
-  copy                    = [[self->isa allocWithZone:zone] init];
+  copy                    = [[object_getClass(self) allocWithZone:zone] init];
   copy->entity            = RETAIN(self->entity);
   copy->content           = [self->content           mutableCopyWithZone:zone];
   copy->relationshipPaths = [self->relationshipPaths mutableCopyWithZone:zone];
