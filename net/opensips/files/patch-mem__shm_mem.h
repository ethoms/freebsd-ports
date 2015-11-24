--- mem/shm_mem.h.orig	2015-11-23 07:30:08.841794842 +0800
+++ mem/shm_mem.h	2015-11-23 07:30:19.719794495 +0800
@@ -62,6 +62,7 @@
 	#endif
 #endif
 
+#include "../error.h"
 #include "../dprint.h"
 #include "../lock_ops.h" /* we don't include locking.h on purpose */
 #include "common.h"
