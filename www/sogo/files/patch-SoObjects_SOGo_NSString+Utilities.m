--- SoObjects/SOGo/NSString+Utilities.m.orig	2015-10-08 19:36:02.806701634 +0800
+++ SoObjects/SOGo/NSString+Utilities.m	2015-10-08 19:37:02.380693585 +0800
@@ -309,7 +309,7 @@
           c == 0xD ||
           (c >= 0x20 && c <= 0xD7FF) ||
           (c >= 0xE000 && c <= 0xFFFD) ||
-          (c >= 0x10000 && c <= 0x10FFFF))
+          (c >= (unichar)0x10000 && c <= (unichar)0x10FFFF))
         {
           *(start+j) = c;
           j++;
