--- ./sope-core/NGExtensions/FdExt.subproj/NSProcessInfo+misc.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/FdExt.subproj/NSProcessInfo+misc.m	2013-10-09 17:03:32.000000000 +0100
@@ -68,7 +68,7 @@
   NSString *s;
   cnt++;
   s = [NSString stringWithFormat:
-                  @"%04X%X%02X.tmp", getpid(), time(NULL),
+                  @"%04X%X%02X.tmp", getpid(), (unsigned int)time(NULL),
                   cnt];
   return [_prefix stringByAppendingString:s];
 }
