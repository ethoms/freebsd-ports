--- SoObjects/SOGo/SOGoGCSFolder.m.orig	2015-09-17 02:41:31.000000000 +0800
+++ SoObjects/SOGo/SOGoGCSFolder.m	2015-10-08 13:05:51.848316611 +0800
@@ -376,12 +376,12 @@
   if (!displayName)
     {
       if (activeUserIsOwner)
-        displayName = [self _displayNameFromOwner];
+        displayName = [[self _displayNameFromOwner] mutableCopy];
       else
         {
-          displayName = [self _displayNameFromSubscriber];
+          displayName = [[self _displayNameFromSubscriber] mutableCopy];
           if (!displayName)
-            displayName = [self _displayNameFromOwner];
+            displayName = [[self _displayNameFromOwner] mutableCopy];
         }
       [displayName retain];
     }
@@ -829,7 +829,7 @@
     {
       currentID = [ids objectAtIndex: count];
       names = [[currentID componentsSeparatedByString: @"/"] objectEnumerator];
-      deleteObject = self;
+      deleteObject = (SOGoContentObject *)self;
       while ((currentName = [names nextObject]))
         {
           deleteObject = [deleteObject lookupName: currentName
