--- ./sope-appserver/NGObjWeb/NGHttp/NGHttpHeaderFieldParser.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/NGHttp/NGHttpHeaderFieldParser.m	2013-10-09 17:03:32.000000000 +0100
@@ -31,7 +31,7 @@
 - (id)parseValue:(id)_data ofHeaderField:(NSString *)_field {
   unsigned              len   = 0;
   const unsigned char   *src  = NULL;
-  NGHttpHostHeaderField *value = nil;
+  id                     value = nil;
   NSString *str = nil;
 
   if ([_data isKindOfClass:[NSData class]]) {
