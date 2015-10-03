--- ./sope-core/NGExtensions/FdExt.subproj/NSString+misc.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/FdExt.subproj/NSString+misc.m	2013-10-09 17:03:32.000000000 +0100
@@ -21,6 +21,7 @@
 */
 
 #include "NSString+misc.h"
+#include "NSException+misc.h"
 #include "common.h"
 
 @interface NSStringVariableBindingException : NSException
