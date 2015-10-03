--- ./sope-core/EOControl/EOQualifierParser.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EOQualifierParser.m	2013-10-09 17:03:32.000000000 +0100
@@ -375,7 +375,7 @@
             @"string(class=%@,len=%i) '%@'",
             __PRETTY_FUNCTION__,
             [_qualifierFormat class],
-            [_qualifierFormat length], _qualifierFormat);
+            (int)[_qualifierFormat length], _qualifierFormat);
       NSLog(@"  buf-length: %i", bufLen);
       NSLog(@"  length:     %i", length);
       NSLog(@"  char[length]: '%c' (%i) '%s'", buf[length], buf[length],
