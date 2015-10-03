--- ./sope-appserver/NGObjWeb/DynamicElements/WOHyperlink.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/DynamicElements/WOHyperlink.m	2013-10-09 17:03:32.000000000 +0100
@@ -75,7 +75,7 @@
     temporaryHyperlink = [_WOTemporaryHyperlink allocWithZone:zone];
   
   if (self == WOHyperlinkClass)
-    return temporaryHyperlink;
+    return (id)temporaryHyperlink;
   else {
 #if PROFILE_CLUSTERS
     static unsigned totalCount        = 0;
