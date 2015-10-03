--- ./sope-xml/DOM/DOMElement.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/DOM/DOMElement.m	2013-10-09 17:03:32.000000000 +0100
@@ -511,8 +511,8 @@
                      self, NSStringFromClass([self class]),
                      [self nodeName],
                      [[self parentNode] nodeName],
-                     [self _numberOfAttributes],
-                     [self hasChildNodes] ? [[self childNodes] length] : 0];
+                     (int)[self _numberOfAttributes],
+                     [self hasChildNodes] ? (int)[[self childNodes] length] : 0];
 }
 
 /* QPValues */
