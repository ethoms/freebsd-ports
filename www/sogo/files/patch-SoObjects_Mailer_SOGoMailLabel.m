--- SoObjects/Mailer/SOGoMailLabel.m.orig	2015-10-11 18:07:02.705202858 +0800
+++ SoObjects/Mailer/SOGoMailLabel.m	2015-10-11 18:09:13.043193497 +0800
@@ -74,7 +74,7 @@
   int i;
 
   allLabels = [NSMutableArray array];
-  allKeys = [[theDefaults allKeys] sortedArrayUsingSelector: @selector (caseInsensitiveCompare:)];
+  allKeys = [[[theDefaults allKeys] sortedArrayUsingSelector: @selector (caseInsensitiveCompare:)] mutableCopy];
   
   for (i = 0; i < [allKeys count]; i++)
     {
