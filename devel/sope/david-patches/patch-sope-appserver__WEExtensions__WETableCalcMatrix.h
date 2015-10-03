--- ./sope-appserver/WEExtensions/WETableCalcMatrix.h.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/WEExtensions/WETableCalcMatrix.h	2013-10-09 17:03:32.000000000 +0100
@@ -66,7 +66,7 @@
   BOOL           rowCheck;
 }
 
-- (id)initWithSize:(unsigned)_width:(unsigned)_height;
+- (id)initWithSize:(unsigned)_width :(unsigned)_height;
 
 /* static accessors */
 
@@ -111,7 +111,7 @@
 
 - (BOOL)tableCalcMatrix:(WETableCalcMatrix *)_matrix
   shouldPlaceObject:(id)_object
-  atPosition:(unsigned)_x:(unsigned)_y;
+  atPosition:(unsigned)_x :(unsigned)_y;
 
 /* define if you want to create own span objects */
 
