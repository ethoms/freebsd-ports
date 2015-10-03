--- ./sope-core/NGExtensions/NGCalendarDateRange.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/NGCalendarDateRange.m	2013-10-09 17:03:32.000000000 +0100
@@ -164,14 +164,14 @@
   if (other == self)
     return YES;
   
-  if ([other isKindOfClass:self->isa] == NO)
+  if ([other isKindOfClass: object_getClass(self)] == NO)
     return NO;
   
   return ([self->startDate isEqual:[other startDate]] && 
 	  [self->endDate isEqual:[other endDate]]) ? YES : NO;
 }
 
-- (unsigned)hash {
+- (NSUInteger)hash {
   return [self->startDate hash] ^ [self->endDate hash];
 }
 
@@ -193,8 +193,8 @@
     
   description = [NSMutableString stringWithCapacity:64];
 
-  [description appendFormat:@"<%@[0x%x]: startDate:%@ endDate: ", 
-	         NSStringFromClass(self->isa), self, self->startDate];
+  [description appendFormat:@"<%@[%p]: startDate:%@ endDate: ", 
+	         NSStringFromClass(object_getClass(self)), self, self->startDate];
   
   if ([self->startDate isEqual:self->endDate])
     [description appendString:@"== startDate"];
