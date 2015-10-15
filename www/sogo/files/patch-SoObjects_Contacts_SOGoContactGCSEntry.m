--- SoObjects/Contacts/SOGoContactGCSEntry.m.orig	2015-10-10 13:22:12.488337134 +0800
+++ SoObjects/Contacts/SOGoContactGCSEntry.m	2015-10-10 13:23:24.526329978 +0800
@@ -50,7 +50,7 @@
 
 - (Class *) parsingClass
 {
-  return [NGVCard class];
+  return (Class *)[NGVCard class];
 }
 
 /* content */
