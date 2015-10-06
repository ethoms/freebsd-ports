--- ./sope-mime/NGMime/NGMimeRFC822DateHeaderFieldParser.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGMime/NGMimeRFC822DateHeaderFieldParser.m	2013-10-09 17:03:32.000000000 +0100
@@ -161,7 +161,7 @@
     hours += 10 * (*(s + pos) - 48) + *(s + pos + 1) - 48;
     break;
   default:
-    NSLog (@"parseTimeZone: cannot parse time notation '%.*s'", len, s);
+    NSLog (@"parseTimeZone: cannot parse time notation '%.*s'", (int)len, s);
   }
 
   seconds += sign * (3600 * hours + 60 * minutes);
