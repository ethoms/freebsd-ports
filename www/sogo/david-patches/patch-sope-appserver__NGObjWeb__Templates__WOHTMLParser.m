--- ./sope-appserver/NGObjWeb/Templates/WOHTMLParser.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/Templates/WOHTMLParser.m	2013-10-09 17:03:32.000000000 +0100
@@ -246,7 +246,7 @@
       [ui setObject:self forKey:@"handler"];
     
     if (!atEof && (_idx > 0)) {
-      register unsigned pos;
+      NSInteger pos;
       const unichar *startPos, *endPos;
 
       for (pos = _idx; (pos >= 0) && (_buffer[pos] != '\n'); pos--)
