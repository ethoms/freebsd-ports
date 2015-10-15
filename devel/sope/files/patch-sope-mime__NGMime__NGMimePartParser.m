--- ./sope-mime/NGMime/NGMimePartParser.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGMime/NGMimePartParser.m	2013-10-09 17:03:32.000000000 +0100
@@ -1025,7 +1025,7 @@
               NSMakeRange(self->dataIdx, self->byteLen - self->dataIdx)];
   if ([data length] != _len) {
     NSLog(@"%s[%i]: got wrong data %d _len %d", __PRETTY_FUNCTION__, __LINE__,
-          [data length], _len);
+          (int)[data length], _len);
     return nil;
   }
   return data;
