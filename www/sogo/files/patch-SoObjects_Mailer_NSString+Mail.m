--- SoObjects/Mailer/NSString+Mail.m.orig	2015-10-12 00:02:53.664734285 +0800
+++ SoObjects/Mailer/NSString+Mail.m	2015-10-12 00:04:12.743725205 +0800
@@ -533,7 +533,7 @@
   messageID = [NSMutableString string];
   [messageID appendFormat: @"<%@", [SOGoObject globallyUniqueObjectId]];
   pGUID = [[NSProcessInfo processInfo] globallyUniqueString];
-  [messageID appendFormat: @"@%u>", [pGUID hash]];
+  [messageID appendFormat: @"@%u>", (unsigned int)[pGUID hash]];
 
   return [messageID lowercaseString];
 }
