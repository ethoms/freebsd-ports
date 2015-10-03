--- ./sope-appserver/WEExtensions/WEMonthOverview.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/WEExtensions/WEMonthOverview.m	2013-10-09 17:03:32.000000000 +0100
@@ -510,7 +510,7 @@
   /* fill up remaining slots with empty arrays */
   for (i = 0; i < MatrixSize; i++) {
     if (self->matrix[i] == nil)
-      self->matrix[i] = [[NSArray alloc] init];
+      self->matrix[i] = (id)[[NSArray alloc] init];
   }
 }
 
