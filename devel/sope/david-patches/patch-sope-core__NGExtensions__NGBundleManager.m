--- ./sope-core/NGExtensions/NGBundleManager.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/NGBundleManager.m	2013-10-09 17:03:32.000000000 +0100
@@ -19,7 +19,7 @@
   Free Software Foundation, 59 Temple Place - Suite 330, Boston, MA
   02111-1307, USA.
 */
-
+#define EXPOSE_NSBundle_IVARS 1
 #include "NGBundleManager.h"
 #include "common.h"
 #include <NGExtensions/NSObject+Logs.h>
@@ -902,7 +902,7 @@
                 @"  loaded version:   %i\n"
                 @"  bundle:           %@",
                 className,
-                v, [clazz version],
+                v, (int)[clazz version],
                 [_bundle bundlePath]);
         }
       }
@@ -918,7 +918,7 @@
                 @"  loaded version:         %i\n"
                 @"  bundle:                 %@",
                 className,
-                v, [clazz version],
+                v, (int)[clazz version],
                 [_bundle bundlePath]);
         }
       }
@@ -1140,7 +1140,7 @@
 
   if (debugOn) {
     NSLog(@"BM LOOKUP pathes (%d bundles loaded): %@ / %@", 
-          NSCountMapTable(self->loadedBundles), _resourceName, _type);
+          (int)NSCountMapTable(self->loadedBundles), _resourceName, _type);
   }
   
   fm     = [NSFileManager defaultManager];
@@ -1316,7 +1316,7 @@
   
   if (debugOn) {
     NSLog(@"BM LOOKUP path (%d bundles loaded): %@ / %@", 
-          NSCountMapTable(self->loadedBundles), _resourceName, _type);
+          (int)NSCountMapTable(self->loadedBundles), _resourceName, _type);
   }
   
   /* look in loaded bundles */
