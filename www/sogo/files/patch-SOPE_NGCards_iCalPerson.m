--- SOPE/NGCards/iCalPerson.m.orig	2015-10-08 09:29:37.635206447 +0800
+++ SOPE/NGCards/iCalPerson.m	2015-10-08 09:32:16.016193627 +0800
@@ -256,7 +256,7 @@
 - (BOOL)isEqual:(id)_other {
   if(_other == nil)
     return NO;
-  if([_other class] != self->isa)
+  if([_other class] != object_getClass(self))
     return NO;
   if([_other hash] != [self hash])
     return NO;
