--- sope-core/NGExtensions/NGCalendarDateRange.m.orig	2015-10-07 08:15:42.214465876 +0800
+++ sope-core/NGExtensions/NGCalendarDateRange.m	2015-10-07 08:19:18.227449713 +0800
@@ -164,7 +164,7 @@
   if (other == self)
     return YES;
   
-  if ([other isKindOfClass:self->isa] == NO)
+  if ([other isKindOfClass: object_getClass(self)] == NO)
     return NO;
   
   return ([self->startDate isEqual:[other startDate]] && 
@@ -194,7 +194,7 @@
   description = [NSMutableString stringWithCapacity:64];
 
   [description appendFormat:@"<%@[0x%p]: startDate:%@ endDate: ", 
-	         NSStringFromClass(self->isa), self, self->startDate];
+	         NSStringFromClass(object_getClass(self)), self, self->startDate];
   
   if ([self->startDate isEqual:self->endDate])
     [description appendString:@"== startDate"];
