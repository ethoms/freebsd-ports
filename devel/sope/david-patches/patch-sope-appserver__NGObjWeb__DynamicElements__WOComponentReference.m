--- ./sope-appserver/NGObjWeb/DynamicElements/WOComponentReference.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/DynamicElements/WOComponentReference.m	2013-10-09 17:03:32.000000000 +0100
@@ -172,7 +172,7 @@
         printf("  ");
       printf("[%s %s]: %0.3fs\n",
              [[child name] cString], 
-#if APPLE_RUNTIME || NeXT_RUNTIME || (__GNU_LIBOBJC__ >= 20100911)
+#if APPLE_RUNTIME || NeXT_RUNTIME || (__GNU_LIBOBJC__ >= 20100911) || defined(__GNUSTEP_RUNTIME__)
 	     sel_getName(_cmd), 
 #else
 	     sel_get_name(_cmd), 
