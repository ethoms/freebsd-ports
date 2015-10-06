--- ./sope-core/NGExtensions/NGResourceLocator.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/NGResourceLocator.m	2013-10-09 17:03:32.000000000 +0100
@@ -263,7 +263,7 @@
     [ms appendString:@":hits"];
   if (self->flags.cachePathMisses)
     [ms appendString:@":misses"];
-  [ms appendFormat:@":#%d", [self->nameToPathCache count]];
+  [ms appendFormat:@":#%d", (int)[self->nameToPathCache count]];
   
   [ms appendString:@">"];
   return ms;
