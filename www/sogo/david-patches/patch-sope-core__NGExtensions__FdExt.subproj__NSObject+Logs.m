--- ./sope-core/NGExtensions/FdExt.subproj/NSObject+Logs.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/FdExt.subproj/NSObject+Logs.m	2013-10-09 17:03:32.000000000 +0100
@@ -52,10 +52,10 @@
                                          200);
     lm = [NGLoggerManager defaultLoggerManager];
   }
-  logger = NSMapGet(loggerForClassMap, self->isa);
+  logger = NSMapGet(loggerForClassMap, object_getClass(self));
   if (!logger) {
-    logger = [lm loggerForClass:self->isa];
-    NSMapInsert(loggerForClassMap, self->isa, logger);
+    logger = [lm loggerForClass: object_getClass(self)];
+    NSMapInsert(loggerForClassMap, object_getClass(self), logger);
   }
 
   return logger;
