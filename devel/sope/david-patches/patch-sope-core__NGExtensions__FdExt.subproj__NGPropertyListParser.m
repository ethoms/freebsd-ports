--- ./sope-core/NGExtensions/FdExt.subproj/NGPropertyListParser.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/FdExt.subproj/NGPropertyListParser.m	2013-10-09 17:03:32.000000000 +0100
@@ -453,7 +453,7 @@
           }
         */
         if (!atEof && (_idx > 0)) {
-            register unsigned pos;
+            NSInteger pos;
             const unsigned char *startPos, *endPos;
 
             for (pos = _idx; (pos >= 0) && (_buffer[pos] != '\n'); pos--)
