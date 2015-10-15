--- ./sope-appserver/NGObjWeb/WOComponent.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WOComponent.m	2013-10-09 17:03:32.000000000 +0100
@@ -1037,7 +1037,7 @@
 
 - (BOOL)logComponentVariableCreations {
   /* only if we have a subclass, we can store values in ivars ... */
-  return (self->isa != WOComponentClass) ? YES : NO;
+  return (object_getClass(self) != WOComponentClass) ? YES : NO;
 }
 
 #if !NG_USE_KVC_FALLBACK /* only override on libFoundation */
@@ -1124,7 +1124,7 @@
     /* only if we have a subclass, we can store values in ivars ... */
     if (![[self->wocVariables objectForKey:_key] isNotNull]) {
       [self debugWithFormat:@"Created component variable (class=%@): '%@'.", 
-	            NSStringFromClass(self->isa), _key];
+	            NSStringFromClass(object_getClass(self)), _key];
     }
   }
 #endif
@@ -1219,7 +1219,7 @@
   if (self->parentComponent)
     [str appendFormat:@" parent=%@", [self->parentComponent name]];
   if (self->subcomponents)
-    [str appendFormat:@" #subs=%i", [self->subcomponents count]];
+    [str appendFormat:@" #subs=%i", (int)[self->subcomponents count]];
   
   if (self->componentFlags.isAwake)
     [str appendFormat:@" awake=0x%p", self->context];
