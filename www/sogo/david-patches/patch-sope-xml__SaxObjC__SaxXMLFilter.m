--- ./sope-xml/SaxObjC/SaxXMLFilter.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/SaxObjC/SaxXMLFilter.m	2013-10-09 17:03:32.000000000 +0100
@@ -155,7 +155,7 @@
   [self->contentHandler endElement:_localName namespace:_ns rawName:_rawName];
 }
 
-- (void)characters:(unichar *)_chars length:(int)_len {
+- (void)characters:(unichar *)_chars length:(NSUInteger)_len {
   [self->contentHandler characters:_chars length:_len];
 }
 - (void)ignorableWhitespace:(unichar *)_chars length:(int)_len {
