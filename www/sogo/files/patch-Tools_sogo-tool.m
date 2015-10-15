--- Tools/sogo-tool.m.orig	2015-10-13 08:49:02.534602894 +0800
+++ Tools/sogo-tool.m	2015-10-13 08:50:28.020596778 +0800
@@ -149,7 +149,7 @@
                   command, [currentTool objectAtIndex: 1]];
     }
 
-  NSLog (helpString);
+  NSLog (@"%@", helpString);
 }
 
 - (void) registerTools
