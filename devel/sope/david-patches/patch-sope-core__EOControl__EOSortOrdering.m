--- ./sope-core/EOControl/EOSortOrdering.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EOSortOrdering.m	2013-10-09 17:03:32.000000000 +0100
@@ -29,7 +29,9 @@
 #endif
 
 #ifndef SEL_EQ
-#  if GNU_RUNTIME
+#  if defined(__GNUSTEP_RUNTIME__)
+#    define SEL_EQ(sel1,sel2) sel_isEqual(sel1, sel2)
+#  elif GNU_RUNTIME
 #    define SEL_EQ(sel1,sel2) sel_eq(sel1,sel2)
 #  else
 #    define SEL_EQ(sel1,sel2) (sel1 == sel2)
