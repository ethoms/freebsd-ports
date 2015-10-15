--- SoObjects/SOGo/WORequest+SOGo.m.orig	2015-10-09 11:56:27.945647076 +0800
+++ SoObjects/SOGo/WORequest+SOGo.m	2015-10-09 13:30:08.196266262 +0800
@@ -180,14 +180,24 @@
   cc = [self clientCapabilities];
 
   b = (
-       [[cc userAgent] rangeOfString: @"CFNetwork"].location != NSNotFound
-       && [[cc userAgent] rangeOfString: @"Darwin"].location != NSNotFound
-       || (
-           [[cc userAgent] rangeOfString: @"CFNetwork"].location != NSNotFound
-            || [[cc userAgent] rangeOfString: @"Mac OS X"].location != NSNotFound
-           )
-       && [[cc userAgent] rangeOfString: @"AddressBook"].location != NSNotFound
-       );
+        (
+          (
+            [[cc userAgent] rangeOfString: @"CFNetwork"].location != NSNotFound
+            && [[cc userAgent] rangeOfString: @"Darwin"].location != NSNotFound
+          )
+          ||
+          (
+            [[cc userAgent] rangeOfString: @"CFNetwork"].location != NSNotFound
+            &&
+            (
+              [[cc userAgent] rangeOfString: @"Mac OS X"].location != NSNotFound
+              ||
+              [[cc userAgent] rangeOfString: @"Mac_OS_X"].location != NSNotFound
+            )
+          )
+        )
+        && [[cc userAgent] rangeOfString: @"AddressBook"].location != NSNotFound
+      );
 
   return b;
 }
