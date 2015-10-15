--- Tools/SOGoToolExpireUserSessions.m.orig	2015-10-13 23:42:49.782904725 +0800
+++ Tools/SOGoToolExpireUserSessions.m	2015-10-13 23:43:53.893900318 +0800
@@ -143,7 +143,7 @@
   else
   {
     if (verbose)
-      NSLog(@"No session to remove", sessionsToDelete);
+      NSLog(@"No session to remove");
   }
 
   [cm releaseChannel: channel];
