--- ./sope-mime/NGMail/NGMimeMessage.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGMail/NGMimeMessage.m	2013-10-09 17:03:32.000000000 +0100
@@ -230,7 +230,7 @@
     if ([b length] < 512)
       [d appendFormat:@" body=%@", b];
     else
-      [d appendFormat:@" body[len=%i]", [b length]];
+      [d appendFormat:@" body[len=%i]", (int)[b length]];
   }
   else
     [d appendFormat:@" body=%@", b];
