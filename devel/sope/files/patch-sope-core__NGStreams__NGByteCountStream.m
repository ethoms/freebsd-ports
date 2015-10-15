--- ./sope-core/NGStreams/NGByteCountStream.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGStreams/NGByteCountStream.m	2013-10-09 17:03:32.000000000 +0100
@@ -87,7 +87,7 @@
   {
     register unsigned char *byteBuffer = _buf;
 
-    for (_len = result - 1; _len >= 0; _len--, byteBuffer++) {
+    for (NSInteger len = result - 1; len >= 0; len--, byteBuffer++) {
       if (*byteBuffer == byteToCount)
         byteReadCount++;
     }
@@ -106,7 +106,7 @@
   {
     register unsigned char *byteBuffer = (unsigned char *)_buf;
 
-    for (_len = result - 1; _len >= 0; _len--, byteBuffer++) {
+    for (NSInteger len = result - 1; len >= 0; len--, byteBuffer++) {
       if (*byteBuffer == byteToCount)
         byteWriteCount++;
     }
