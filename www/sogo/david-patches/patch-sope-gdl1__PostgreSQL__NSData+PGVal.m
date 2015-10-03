--- ./sope-gdl1/PostgreSQL/NSData+PGVal.m.orig	2013-10-09 17:13:52.000000000 +0100
+++ ./sope-gdl1/PostgreSQL/NSData+PGVal.m	2013-10-09 17:14:16.000000000 +0100
@@ -84,7 +84,7 @@
 
   if (doDebug) {
     NSLog(@"Note: made string (len=%i) for data (len=%i), type %@",
-	  [str length], [self length], _type);
+	  (int)[str length], (int)[self length], _type);
   }
   
   if ((len = [_type length]) == 0) {
@@ -108,7 +108,7 @@
       t = [[str stringValueForPostgreSQLType:_type 
 		attribute:_attribute] copy];
       [str release];
-      if (doDebug) NSLog(@"  result len %i", [t length]);
+      if (doDebug) NSLog(@"  result len %i", (int)[t length]);
       return [t autorelease];
     }
   }
