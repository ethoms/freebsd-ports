--- Tools/SOGoToolUserPreferences.m.orig	2015-10-13 09:43:41.234378222 +0800
+++ Tools/SOGoToolUserPreferences.m	2015-10-13 09:48:36.693354816 +0800
@@ -115,7 +115,7 @@
       [theKey caseInsensitiveCompare: @"Vacation"] == NSOrderedSame)
     {
       /* credentials file handling */
-      NSString *credsFilename, *authname, *authpwd;
+      NSString *credsFilename=nil, *authname=nil, *authpwd=nil;
       SOGoCredentialsFile *cf;
 
       credsFilename = [[NSUserDefaults standardUserDefaults] stringForKey: @"p"];
