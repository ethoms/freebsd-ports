--- ./sope-mime/NGMail/NGMailAddressParser.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGMail/NGMailAddressParser.m	2013-10-09 17:03:32.000000000 +0100
@@ -349,15 +349,15 @@
   uniString = [NSString stringWithCharacters:(unichar *)[_data bytes]
 			length:([_data length] / sizeof(unichar))];
 
-  return [(NGMailAddressParser *)self mailAddressParserWithString:uniString];
+  return [(id)self mailAddressParserWithString:uniString];
 }
 
-+ (id)mailAddressParserWithCString:(char *)_cString {
++ (id)mailAddressParserWithCString:(const char *)_cString {
   NSString *nsCString;
 
   nsCString = [NSString stringWithCString:_cString];
 
-  return [(NGMailAddressParser *)self mailAddressParserWithString:nsCString];
+  return [(id)self mailAddressParserWithString:nsCString];
 }
 
 + (id)mailAddressParserWithString:(NSString *)_string {
