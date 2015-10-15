--- ./sope-core/EOControl/EOKeyComparisonQualifier.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EOKeyComparisonQualifier.m	2013-10-09 17:03:32.000000000 +0100
@@ -200,7 +200,7 @@
     return NO;
   if (![self->rightKey isEqual:[(EOKeyComparisonQualifier *)_qual rightKey]])
     return NO;
-  if (sel_eq(self->operator, [(EOKeyComparisonQualifier *)_qual selector]))
+  if (sel_isEqual(self->operator, [(EOKeyComparisonQualifier *)_qual selector]))
     return YES;
   return NO;
 }
