--- ./sope-appserver/WEExtensions/WETableMatrix.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/WEExtensions/WETableMatrix.m	2013-10-09 17:03:32.000000000 +0100
@@ -139,7 +139,7 @@
 
 - (BOOL)tableCalcMatrix:(WETableCalcMatrix *)_matrix
   shouldPlaceObject:(id)_object
-  atPosition:(unsigned)_x:(unsigned)_y
+  atPosition:(unsigned)_x :(unsigned)_y
 {
   id   _row, _col;
   BOOL doPlace;
