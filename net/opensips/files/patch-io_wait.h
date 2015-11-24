--- io_wait.h.orig	2015-11-23 01:45:15.316221735 +0800
+++ io_wait.h	2015-11-23 01:50:17.419199577 +0800
@@ -56,6 +56,9 @@
 
 #include <errno.h>
 #include <string.h>
+#if defined(__FreeBSD__)
+#include "ip_addr.h"
+#endif
 #ifdef HAVE_SIGIO_RT
 #define __USE_GNU /* or else F_SETSIG won't be included */
 #define _GNU_SOURCE /* define this as well */
