--- ./sope-appserver/NGObjWeb/WOComponent+Sync.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WOComponent+Sync.m	2013-10-09 17:03:32.000000000 +0100
@@ -87,7 +87,7 @@
 #if NeXT_RUNTIME
   takeValue = (void *)[self methodForSelector:@selector(takeValue:forKey:)];
 #elif GNUSTEP_BASE_LIBRARY
-  takeValue = (void*)method_get_imp(class_get_instance_method(self->isa,
+  takeValue = (void*)method_get_imp(class_get_instance_method(object_getClass(self),
                 @selector(setValue:forKey:)));
 #else  
   takeValue = (void*)method_get_imp(class_get_instance_method(self->isa,
@@ -148,7 +148,7 @@
 #if NeXT_RUNTIME
   getValue = (void *)[self methodForSelector:@selector(valueForKey:)];
 #else
-  getValue = (void*)method_get_imp(class_get_instance_method(self->isa,
+  getValue = (void*)method_get_imp(class_get_instance_method(object_getClass(self),
                 @selector(valueForKey:)));
 #endif
   
