--- ./sope-gdl1/PostgreSQL/NSString+PostgreSQL72.m.orig	2013-10-09 17:10:33.000000000 +0100
+++ ./sope-gdl1/PostgreSQL/NSString+PostgreSQL72.m	2013-10-09 17:13:45.000000000 +0100
@@ -145,13 +145,15 @@
   range.length = 0;
 
   for (range.location = ([self length] - 1);
-         range.location >= 0;
-         range.location++, range.length++) {
+         ;
+         range.location--, range.length++) {
       unichar c;
       
       c = charAtIndex(self, @selector(characterAtIndex:), range.location);
       if (![spaceSet characterIsMember:c])
         break;
+      if (range.location == 0)
+        break;
   }
     
   if (range.length > 0) {
