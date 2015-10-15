--- UI/Contacts/UIxContactView.m.orig	2015-09-17 02:41:36.000000000 +0800
+++ UI/Contacts/UIxContactView.m	2015-10-15 11:19:56.731067858 +0800
@@ -350,7 +350,7 @@
   data = [NSMutableString string];
   [data appendString: postalCode];
   if ([postalCode length] > 0 && [country length] > 0)
-    [data appendFormat: @", ", country];
+    [data appendFormat: @", "];
   [data appendString: country];
 
   return [self _cardStringWithLabel: nil value: data];
@@ -562,7 +562,7 @@
   data = [NSMutableString string];
   [data appendString: postalCode];
   if ([postalCode length] > 0 && [country length] > 0)
-    [data appendFormat: @" ", country];
+    [data appendFormat: @", "];
   [data appendString: country];
 
   return [self _cardStringWithLabel: nil value: data];
