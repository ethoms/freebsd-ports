--- ./sope-gdl1/GDLAccess/EOFault.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EOFault.m	2013-10-09 17:08:55.000000000 +0100
@@ -67,7 +67,7 @@
 + (void)makeObjectIntoFault:(id)_object withHandler:(EOFaultHandler *)_handler{
   [_handler setTargetClass:[_object class] extraData:((id *)_object)[1]];
 
-  ((EOFault *)_object)->isa           = self;
+  object_setClass(_object, self);
   ((EOFault *)_object)->faultResolver = [_handler retain];
 }
 
@@ -85,14 +85,14 @@
   int refs;
 
   /* check if fault */
-  if (aFault->isa != self)
+  if (object_getClass(aFault) != self)
     return;
     
   /* get fault instance reference count + 1 set in creation methods */
   refs = aFault->faultResolver->faultReferences;
 
   /* make clear instance */
-  aFault->isa           = [aFault->faultResolver targetClass];
+  object_setClass(aFault, [aFault->faultResolver targetClass]);
   aFault->faultResolver = [aFault->faultResolver autorelease];
   aFault->faultResolver = [aFault->faultResolver extraData];
   
@@ -112,7 +112,7 @@
   if (EOFaultClass == Nil) EOFaultClass = [EOFault class];
 
 #if defined(APPLE_RUNTIME) || defined(__GNUSTEP_RUNTIME__) || (__GNU_LIBOBJC__ >= 20100911)
-  for (clazz = ((EOFault *)fault)->isa; clazz; clazz = class_getSuperclass(clazz)) {
+  for (clazz = object_getClass(fault); clazz; clazz = class_getSuperclass(clazz)) {
 #else
   for (clazz = ((EOFault *)fault)->isa; clazz; clazz = clazz->super_class) {
 #endif
@@ -132,7 +132,7 @@
   EOFault *aFault = (EOFault*)_fault;
 
   // Check that argument is fault
-  if (aFault->isa != self)
+  if (object_getClass(aFault) != self)
     return nil;
     
   return [aFault->faultResolver targetClass];
@@ -182,7 +182,7 @@
 #if GNU_RUNTIME
   return (object_is_instance(self))
     ? [self->faultResolver respondsToSelector:_selector forFault:self]
-    : class_get_class_method(self->isa, _selector) != METHOD_NULL;
+    : class_get_class_method(object_getClass(self), _selector) != METHOD_NULL;
 #else
 #  warning TODO: add complete implementation for Apple/NeXT runtime!
   return [self->faultResolver respondsToSelector:_selector forFault:self];
@@ -239,7 +239,7 @@
   NSLog(@"WARNING: tried to deallocate EOFault class ..");
 }
 - (void)dealloc {
-  [self->isa clearFault:self];
+  [object_getClass(self) clearFault:self];
   [self dealloc];
 }
 
@@ -285,7 +285,7 @@
   handler = self->faultResolver;
   [handler completeInitializationOfObject:self];
   
-  if (self->isa == [EOFault class]) {
+  if (object_getClass(self) == [EOFault class]) {
     [NSException raise:@"NSInvalidArgumentException" 
 		 format:
 		   @"fault error: %@ was not cleared during fault fetching",
@@ -294,7 +294,7 @@
 }
 
 + (id)self {
-  _resolveFault(self);
+  _resolveFault((id)self);
   return self;
 }
 
