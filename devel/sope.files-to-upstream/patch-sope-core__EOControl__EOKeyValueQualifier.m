--- ./sope-core/EOControl/EOKeyValueQualifier.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EOKeyValueQualifier.m	2013-10-09 17:03:32.000000000 +0100
@@ -227,7 +227,7 @@
     return NO;
   if (![self->value isEqual:[(EOKeyValueQualifier *)_qual value]])
     return NO;
-  if (sel_eq(self->operator, [(EOKeyValueQualifier *)_qual selector]))
+  if (sel_isEqual(self->operator, [(EOKeyValueQualifier *)_qual selector]))
     return YES;
   return NO;
 }
