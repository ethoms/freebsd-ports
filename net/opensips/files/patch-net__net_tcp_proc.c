--- net/net_tcp_proc.c.orig	2015-07-15 18:25:16.577532779 +0800
+++ net/net_tcp_proc.c	2015-07-15 18:24:40.456533092 +0800
@@ -26,6 +26,7 @@
 
 #include "../timer.h"
 #include "../reactor.h"
+#include "../pt.h"
 #include "tcp_conn.h"
 #include "tcp_passfd.h"
 
