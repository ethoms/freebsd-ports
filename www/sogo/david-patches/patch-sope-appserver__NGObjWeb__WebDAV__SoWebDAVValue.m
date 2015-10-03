--- ./sope-appserver/NGObjWeb/WebDAV/SoWebDAVValue.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WebDAV/SoWebDAVValue.m	2013-10-09 17:03:32.000000000 +0100
@@ -78,7 +78,7 @@
 	
 	if ((p = [encNS objectForKey:ns]) == nil) {
 	  if ((p = [_prefixes objectForKey:ns]) == nil) {
-	    p = [NSString stringWithFormat:@"a%i", [encNS count]];
+	    p = [NSString stringWithFormat:@"a%i", (int)[encNS count]];
 	    [encNS setObject:p forKey:ns];
 	    [ms appendString:@" xmlns:"];
 	    [ms appendString:p];
