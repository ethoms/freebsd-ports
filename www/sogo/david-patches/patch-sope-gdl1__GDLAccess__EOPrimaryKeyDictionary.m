--- ./sope-gdl1/GDLAccess/EOPrimaryKeyDictionary.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-gdl1/GDLAccess/EOPrimaryKeyDictionary.m	2013-10-09 17:03:32.000000000 +0100
@@ -130,7 +130,7 @@
 - (BOOL)isEqualToDictionary:(NSDictionary *)other {
     if (self == (EOSinglePrimaryKeyDictionary*)other)
         return YES;
-    if (self->isa == ((EOSinglePrimaryKeyDictionary*)other)->isa) {
+    if (object_getClass(self) == object_getClass(other)) {
         if (fastHash == ((EOSinglePrimaryKeyDictionary*)other)->fastHash &&
             [key isEqual:((EOSinglePrimaryKeyDictionary*)other)->key] &&
             [value isEqual:((EOSinglePrimaryKeyDictionary*)other)->value])
@@ -157,7 +157,7 @@
 - (BOOL)fastIsEqual:(id)other {
     if (self == other)
         return YES;
-    if (self->isa == ((EOSinglePrimaryKeyDictionary*)other)->isa) {
+    if (object_getClass(self) == object_getClass(other)) {
         if (fastHash == ((EOSinglePrimaryKeyDictionary*)other)->fastHash &&
             key == ((EOSinglePrimaryKeyDictionary*)other)->key &&
             [value isEqual:((EOSinglePrimaryKeyDictionary*)other)->value])
@@ -263,14 +263,14 @@
     return nil;
 }
 
-- (unsigned int)count {
+- (NSUInteger)count {
     return self->count;
 }
 - (BOOL)isNotEmpty {
   return self->count > 0 ? YES : NO;
 }
 
-- (unsigned int)hash {
+- (NSUInteger)hash {
     return self->count;
 }
 
@@ -316,7 +316,7 @@
 - (BOOL)fastIsEqual:(id)aDict {
     int i;
     
-    if (self->isa != ((EOMultiplePrimaryKeyDictionary*)aDict)->isa) {
+    if (object_getClass(self) == object_getClass(aDict)) {
       [NSException raise:NSInvalidArgumentException
 		   format:@"fastIsEqual: can compare only "
                            @"EOPrimaryKeyDictionary instances"];
