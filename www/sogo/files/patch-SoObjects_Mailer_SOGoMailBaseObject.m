--- SoObjects/Mailer/SOGoMailBaseObject.m.orig	2015-09-17 02:41:30.000000000 +0800
+++ SoObjects/Mailer/SOGoMailBaseObject.m	2015-10-14 02:16:23.980269983 +0800
@@ -32,9 +32,11 @@
 #import <NGExtensions/NSString+misc.h>
 #import <NGExtensions/NSURL+misc.h>
 #import <NGImap4/NGImap4Connection.h>
+#import <NGImap4/NGImap4Client.h>
 
 #import <SOGo/SOGoCache.h>
 #import <SOGo/SOGoUser.h>
+#import <SOGo/WORequest+SOGo.h>
 
 #import "SOGoMailAccount.h"
 #import "SOGoMailManager.h"
