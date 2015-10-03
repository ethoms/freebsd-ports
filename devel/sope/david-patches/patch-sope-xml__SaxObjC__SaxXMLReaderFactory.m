--- ./sope-xml/SaxObjC/SaxXMLReaderFactory.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/SaxObjC/SaxXMLReaderFactory.m	2013-10-09 17:03:32.000000000 +0100
@@ -383,7 +383,7 @@
   defReader = 
     [[NSUserDefaults standardUserDefaults] stringForKey:@"XMLReader"];
 
-  if (debugOn) NSLog(@"%s:   default name ...",__PRETTY_FUNCTION__, defReader);
+  if (debugOn) NSLog(@"%s:   default name %@ ...",__PRETTY_FUNCTION__, defReader);
   
   if (defReader) {
     if ((reader = [self createXMLReaderWithName:defReader]))
