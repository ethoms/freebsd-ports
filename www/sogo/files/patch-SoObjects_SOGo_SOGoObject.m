--- SoObjects/SOGo/SOGoObject.m.orig	2015-10-08 12:15:33.034523424 +0800
+++ SoObjects/SOGo/SOGoObject.m	2015-10-08 12:28:36.114468163 +0800
@@ -1066,7 +1066,7 @@
     [_ms appendFormat:@" name=%@", nameInContainer];
   if (container)
     [_ms appendFormat:@" container=0x%08X/%@", 
-         container, [container valueForKey:@"nameInContainer"]];
+         (unsigned int)container, [container valueForKey:@"nameInContainer"]];
 }
 
 - (NSString *) description
@@ -1074,7 +1074,7 @@
   NSMutableString *ms;
 
   ms = [NSMutableString stringWithCapacity:64];
-  [ms appendFormat:@"<0x%08X[%@]:", self, NSStringFromClass([self class])];
+  [ms appendFormat:@"<0x%08X[%@]:", (unsigned int) self, NSStringFromClass([self class])];
   [self appendAttributesToDescription:ms];
   [ms appendString:@">"];
 
@@ -1084,7 +1084,7 @@
 - (NSString *) loggingPrefix
 {
   return [NSString stringWithFormat:@"<0x%08X[%@]:%@>",
-		   self, NSStringFromClass([self class]),
+		   (unsigned int) self, NSStringFromClass([self class]),
 		   [self nameInContainer]];
 }
 
