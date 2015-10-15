--- SoObjects/Contacts/SOGoContactGCSList.m.orig	2015-10-10 13:25:06.365325835 +0800
+++ SoObjects/Contacts/SOGoContactGCSList.m	2015-10-10 13:25:31.802319847 +0800
@@ -45,7 +45,7 @@
 
 - (Class *) parsingClass
 {
-  return [NGVList class];
+  return (Class *)[NGVList class];
 }
 
 
