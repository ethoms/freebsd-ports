--- ./sope-core/NGExtensions/NGHashMap.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/NGHashMap.m	2013-10-09 17:03:32.000000000 +0100
@@ -410,7 +410,7 @@
   if ((_index < list->count) == 0) {
     [NSException raise:NSRangeException
                  format:@"index %d out of range for key %@ of length %d",
-                   _index, _key, list->count];
+                   (int)_index, _key, list->count];
     return nil;
   }
 
@@ -723,7 +723,7 @@
     if (_index > 0) {
       [NSException raise:NSRangeException
                    format:@"index %d out of range in map 0x%p", 
-                    _index, self];
+                    (int)_index, self];
       return;
     }
 
@@ -735,7 +735,7 @@
     if (!(_index < root->count)) {
       [NSException raise:NSRangeException
                    format:@"index %d out of range in map 0x%p length %d", 
-                    _index, self, root->count];
+                    (int)_index, self, root->count];
       return;
     }
     
