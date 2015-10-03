--- ./sope-gdl1/GDLAccess/EOFExceptions.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EOFExceptions.m	2013-10-09 17:03:32.000000000 +0100
@@ -63,7 +63,7 @@
                             [destinationEntity name],
                             definition,
                             [relationship name]];
-    [self initWithName:NSStringFromClass(isa)
+    [self initWithName:NSStringFromClass(object_getClass(self))
             reason:_reason userInfo:nil];
     return self;
 }
@@ -74,7 +74,7 @@
 - initWithName:(NSString*)_name
 {
     id _reason = [NSString stringWithFormat:@"invalid name: '%@'", _name];
-    [self initWithName:NSStringFromClass(isa) reason:_reason userInfo:nil];
+    [self initWithName:NSStringFromClass(object_getClass(self)) reason:_reason userInfo:nil];
     return self;
 }
 @end /* InvalidNameException */
@@ -86,7 +86,7 @@
     id _reason = [NSString stringWithFormat:@"property '%@' does not exist in "
                             @"entity '%@'", propertyName,
                             [(EOEntity*)currentEntity name]];
-    [self initWithName:NSStringFromClass(isa)
+    [self initWithName:NSStringFromClass(object_getClass(self))
             reason:_reason userInfo:nil];
     return self;
 }
@@ -99,7 +99,7 @@
     id _reason = [NSString stringWithFormat:@"property '%@' must be to one in "
                     @"entity '%@' to allow flattened attribute",
                     propertyName, [(EOEntity*)currentEntity name]];
-    [self initWithName:NSStringFromClass(isa)
+    [self initWithName:NSStringFromClass(object_getClass(self))
             reason:_reason userInfo:nil];
     return self;
 }
