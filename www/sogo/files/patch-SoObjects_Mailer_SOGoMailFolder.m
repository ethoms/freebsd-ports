--- SoObjects/Mailer/SOGoMailFolder.m.orig	2015-10-10 17:21:58.389347307 +0800
+++ SoObjects/Mailer/SOGoMailFolder.m	2015-10-10 17:25:17.473330458 +0800
@@ -1645,7 +1645,7 @@
 
   sortOrderings = [NSMutableArray array];
 
-  if ([self _sortElementIsAscending: sortElement])
+  if ([self _sortElementIsAscending: (NGDOMNodeWithChildren <DOMElement> *)sortElement])
     sortOrderingOrder = EOCompareAscending;
   else
     sortOrderingOrder = EOCompareDescending;
