--- ./sope-mime/NGImap4/NGImap4ResponseParser.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGImap4/NGImap4ResponseParser.m	2013-10-09 17:03:32.000000000 +0100
@@ -2432,7 +2432,7 @@
 static BOOL _parseNoOrOkArguments(NGImap4ResponseParser *self,
                                   NGMutableHashMap *result_, NSString *_key) 
 {
-  NSString *obj;
+  id obj;
 
   obj = nil;
   
