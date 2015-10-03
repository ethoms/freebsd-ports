--- ./sope-xml/STXSaxDriver/STXSaxDriver.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/STXSaxDriver/STXSaxDriver.m	2013-10-09 17:03:32.000000000 +0100
@@ -353,11 +353,11 @@
   }
   
   if ((s = [_item textParsedWithDelegate:(id)self inContext:self->context])) {
-    if (debugOn) NSLog(@"          chars: %d", [s length]);
+    if (debugOn) NSLog(@"          chars: %d", (int)[s length]);
     [self _characters:s];
   }
   
-    if (debugOn) NSLog(@"          elems: %d", [[_item elements] count]);
+    if (debugOn) NSLog(@"          elems: %d", (int)[[_item elements] count]);
   [self produceSaxEventsForElements:[_item elements]];
   
   switch (typology) {
@@ -392,7 +392,7 @@
   unsigned int i, c;
   
   if (debugOn)
-    NSLog(@"  produce SAX events for elements: %d", [_elems count]);
+    NSLog(@"  produce SAX events for elements: %d", (int)[_elems count]);
   for (i = 0, c = [_elems count]; i < c; i++) {
     id currentObject;
     
