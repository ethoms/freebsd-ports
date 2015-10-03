--- ./sope-core/NGExtensions/FdExt.subproj/NSException+misc.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/FdExt.subproj/NSException+misc.m	2013-10-09 17:03:32.000000000 +0100
@@ -19,6 +19,7 @@
   02111-1307, USA.
 */
 
+#define EXPOSE_NSException_IVARS 1
 #include "NSException+misc.h"
 #import <Foundation/NSNull.h>
 #include "common.h"
@@ -85,7 +86,7 @@
 
 - (id)copyWithZone:(NSZone *)_zone {
   // TODO: should make a real copy?
-  return [self retain];
+  return (id)[self retain];
 }
 
 @end /* NSException(NGMiscellaneous) */
