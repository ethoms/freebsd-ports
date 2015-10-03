--- ./sope-appserver/NGObjWeb/WOMailDelivery.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WOMailDelivery.m	2013-10-09 17:03:32.000000000 +0100
@@ -180,7 +180,8 @@
       NSData *body;
       
       body = [(NSDictionary *)_email objectForKey:@"body"];
-      if (fwrite([body bytes], [body length], 1, toMail) < 0)
+      NSUInteger bytes = [body length];
+      if (fwrite([body bytes], bytes, 1, toMail) < bytes)
         goto failed;
     }
     fprintf(toMail, "\r\n");
