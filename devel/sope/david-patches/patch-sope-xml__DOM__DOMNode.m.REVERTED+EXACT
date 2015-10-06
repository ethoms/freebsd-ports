--- ./sope-xml/DOM/DOMNode.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/DOM/DOMNode.m	2013-10-09 17:03:32.000000000 +0100
@@ -214,7 +214,7 @@
                      [self nodeName],
                      [[self parentNode] nodeName],
                      [self nodeType],
-                     [self hasChildNodes] ? [[self childNodes] length] : 0];
+                     [self hasChildNodes] ? (int)[[self childNodes] length] : 0];
 }
 
 @end /* NGDOMNode */
