--- SoObjects/SOGo/NSData+Crypto.m.orig	2015-10-15 09:47:42.622448275 +0800
+++ SoObjects/SOGo/NSData+Crypto.m	2015-10-15 09:47:56.039449839 +0800
@@ -23,7 +23,7 @@
  * Boston, MA 02111-1307, USA.
  */
 
-#ifndef __OpenBSD__
+#if !defined(__OpenBSD__) && !defined(__FreeBSD__)
 #include <crypt.h>
 #endif
 
