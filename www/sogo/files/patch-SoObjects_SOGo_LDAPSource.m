--- SoObjects/SOGo/LDAPSource.m.orig	2015-10-08 14:56:38.777853673 +0800
+++ SoObjects/SOGo/LDAPSource.m	2015-10-08 15:07:17.767809894 +0800
@@ -1703,7 +1703,7 @@
                             hostname: hostname
                                 port: [NSString stringWithFormat: @"%d", port]
                           encryption: encryption
-                   bindAsCurrentUser: NO];
+                   bindAsCurrentUser: [NSString stringWithFormat: @"%d", NO]];
               [ab                     setBaseDN: [entry dn]
                                         IDField: @"cn"
                                         CNField: @"displayName"
