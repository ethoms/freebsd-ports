--- ./sope-core/EOControl/EOFetchSpecification.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EOFetchSpecification.m	2013-10-09 17:03:32.000000000 +0100
@@ -291,7 +291,7 @@
       [ma release];
     }
     else
-      lHints = [self->hints retain];
+      lHints = (id)[self->hints retain];
   }
   else 
     lHints = nil;
