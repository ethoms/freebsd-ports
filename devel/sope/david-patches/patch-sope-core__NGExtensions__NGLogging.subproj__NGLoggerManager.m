--- ./sope-core/NGExtensions/NGLogging.subproj/NGLoggerManager.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/NGLogging.subproj/NGLoggerManager.m	2013-10-09 17:03:32.000000000 +0100
@@ -124,7 +124,7 @@
 - (NSString *)description {
   return [NSString stringWithFormat:@"<%@[0x%p] debugAll=%@ #loggers=%d>",
                      NSStringFromClass([self class]), self,
-                     debugAll ? @"YES" : @"NO", [self->loggerMap count]];
+                     debugAll ? @"YES" : @"NO", (int)[self->loggerMap count]];
 }
 
 @end /* NGLoggerManager */
