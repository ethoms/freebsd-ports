--- ./sope-gdl1/PostgreSQL/PostgreSQL72Channel.m.orig	2013-10-09 17:10:13.000000000 +0100
+++ ./sope-gdl1/PostgreSQL/PostgreSQL72Channel.m	2013-10-09 17:10:22.000000000 +0100
@@ -203,7 +203,7 @@
   /* set client encoding */
 #if NG_SET_CLIENT_ENCODING
   if (![self->connection setClientEncoding:PGClientEncoding]) {
-    NSLog(@"WARNING: could not set client encoding to: '%s'", 
+    NSLog(@"WARNING: could not set client encoding to: '%@'", 
 	  PGClientEncoding);
   }
 #endif
