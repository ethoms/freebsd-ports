--- Main/SOGo+DAV.m.orig	2015-10-12 00:55:36.784513635 +0800
+++ Main/SOGo+DAV.m	2015-10-12 01:05:10.524474393 +0800
@@ -267,7 +267,7 @@
   NSObject <DOMNodeList> *list;
   NSObject <DOMNode> *valueNode;
   NSArray *elements;
-  NSString *property, *match;
+  NSString *property=nil, *match=nil;
 
   list = [searchElement getElementsByTagName: @"prop"];
   if ([list length])
