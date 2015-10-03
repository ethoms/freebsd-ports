--- ./sope-appserver/NGObjWeb/Templates/WOxElemBuilder.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/Templates/WOxElemBuilder.m	2013-10-09 17:03:32.000000000 +0100
@@ -190,7 +190,7 @@
       }
     }
     else {
-      NSLog(@"%s: couldn't allocate builder (class=%@)", cn);
+      NSLog(@"couldn't allocate builder (class=%@)", cn);
       continue;
     }
   }
