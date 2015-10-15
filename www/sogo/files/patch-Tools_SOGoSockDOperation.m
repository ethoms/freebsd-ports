--- Tools/SOGoSockDOperation.m.orig	2015-10-13 21:11:15.463535399 +0800
+++ Tools/SOGoSockDOperation.m	2015-10-13 21:14:55.685516664 +0800
@@ -145,7 +145,7 @@
     [self _appendEntry: [resultEntries objectAtIndex: count]
               toResult: result];
 
-  [result appendFormat: @"RESULT\ncode: %", resultCode];
+  [result appendFormat: @"RESULT\ncode: %d", resultCode];
   [responseSocket
     safeWriteData: [result dataUsingEncoding: NSASCIIStringEncoding]];
 }
