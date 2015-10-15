--- SoObjects/Contacts/SOGoContactSourceFolder.m.orig	2015-10-10 13:26:34.980316221 +0800
+++ SoObjects/Contacts/SOGoContactSourceFolder.m	2015-10-10 13:53:49.996206010 +0800
@@ -94,7 +94,7 @@
     {
       if (![newDisplayName length])
         newDisplayName = newName;
-      ASSIGN (displayName, newDisplayName);
+      ASSIGN (displayName, [newDisplayName mutableCopy]);
     }
 
   return self;
@@ -657,7 +657,7 @@
   BOOL otherIsPersonal;
 
   otherIsPersonal = ([otherFolder isKindOfClass: [SOGoContactGCSFolder class]]
-                     || ([otherFolder isKindOfClass: isa] && [otherFolder isPersonalSource]));
+                     || ([otherFolder isKindOfClass: object_getClass(self)] && [otherFolder isPersonalSource]));
 
   if (isPersonalSource)
     {
