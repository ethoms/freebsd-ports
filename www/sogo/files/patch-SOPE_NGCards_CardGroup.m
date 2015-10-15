--- SOPE/NGCards/CardGroup.m.orig	2015-10-08 09:03:57.483310954 +0800
+++ SOPE/NGCards/CardGroup.m	2015-10-08 09:06:25.109300905 +0800
@@ -409,7 +409,7 @@
   max = [children count];
   if (max > 0)
     {
-      [str appendFormat: @"\n  %d children: {\n", [children count]];
+      [str appendFormat: @"\n  %d children: {\n", (int)[children count]];
       for (count = 0; count < max; count++)
         [str appendFormat: @"  %@\n",
              [[children objectAtIndex: count] description]];
