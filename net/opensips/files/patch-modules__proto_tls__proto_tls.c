--- modules/proto_tls/proto_tls.c.orig	2015-08-27 23:06:47.000000000 +0800
+++ modules/proto_tls/proto_tls.c	2015-11-24 04:59:44.764931027 +0800
@@ -42,6 +42,7 @@
 #include <openssl/opensslv.h>
 #include <openssl/err.h>
 
+#include <netinet/in.h>
 #include <netinet/in_systm.h>
 #include <netinet/tcp.h>
 #include <netinet/ip.h>
