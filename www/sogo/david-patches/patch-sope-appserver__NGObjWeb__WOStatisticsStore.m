--- ./sope-appserver/NGObjWeb/WOStatisticsStore.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WOStatisticsStore.m	2013-10-09 17:03:32.000000000 +0100
@@ -35,7 +35,7 @@
   unsigned       zippedResponsesCount;
   unsigned       totalZippedSize;
   unsigned       largestResponseSize;
-  unsigned       smallestResponseSize;
+  NSInteger      smallestResponseSize;
   NSTimeInterval minimumDuration;
   NSTimeInterval maximumDuration;
   NSTimeInterval totalDuration;
@@ -420,7 +420,7 @@
   /* response */
   
   [result appendFormat:@"%i %i",
-            [_response status], [[_response content] length]];
+            [_response status], (int)[[_response content] length]];
   
   if ((startDate = [request startDate]) != nil) {
     NSTimeInterval duration;
