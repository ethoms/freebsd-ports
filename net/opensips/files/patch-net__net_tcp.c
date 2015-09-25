--- net/net_tcp.c.orig	2015-07-15 17:42:39.190707350 +0800
+++ net/net_tcp.c	2015-07-15 17:42:53.587705127 +0800
@@ -26,6 +26,7 @@
 
 #include <sys/types.h>
 #include <sys/socket.h>
+#include <netinet/in.h>
 #include <netinet/in_systm.h>
 #include <netinet/ip.h>
 #include <netinet/tcp.h>
