--- ./sope-core/NGExtensions/FdExt.subproj/NSObject+Values.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/FdExt.subproj/NSObject+Values.m	2013-10-09 17:03:32.000000000 +0100
@@ -82,7 +82,7 @@
 
 + (NSString *) stringWithUnsignedLongLong: (unsigned long long)value
 {
-  return [NSString stringWithFormat: @"0x%.16"PRIx64, value];
+  return [NSString stringWithFormat: @"0x%.16llx", value];
 }
 
 - (BOOL)boolValue {
