--- ./sope-mime/NGMime/NGMimeBodyPart.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGMime/NGMimeBodyPart.m	2013-10-09 17:03:32.000000000 +0100
@@ -206,10 +206,10 @@
   else if ([b isKindOfClass:[NSString class]] ||
            [b isKindOfClass:[NSData class]]) {
     if ([b length] < 512) {
-      [d appendFormat:@" bodyLen=%i body=%@", [b length], b];
+      [d appendFormat:@" bodyLen=%i body=%@", (int)[b length], b];
     }
     else
-      [d appendFormat:@" body[len=%i]", [b length]];
+      [d appendFormat:@" body[len=%i]", (int)[b length]];
   }
   else
     [d appendFormat:@" body=%@", b];
