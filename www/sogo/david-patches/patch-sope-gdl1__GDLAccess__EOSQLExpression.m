--- ./sope-gdl1/GDLAccess/EOSQLExpression.m.orig	2013-10-09 17:09:54.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EOSQLExpression.m	2013-10-09 17:10:11.000000000 +0100
@@ -39,6 +39,7 @@
 #include <EOControl/EONull.h>
 #include <EOControl/EOQualifier.h>
 #include <EOControl/EOSortOrdering.h>
+#import "NGExtensions/NSException+misc.h"
 
 #if LIB_FOUNDATION_LIBRARY
 #  include <extensions/DefaultScannerHandler.h>
