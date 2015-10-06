--- ./sope-appserver/NGObjWeb/NGHttp/NGHttpResponse.h.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/NGHttp/NGHttpResponse.h	2013-10-09 17:03:32.000000000 +0100
@@ -122,7 +122,7 @@
   return ((_code >= 400) && (_code < 500)) ? YES : NO;
 }
 static inline BOOL NGIsServerErrorHttpStatusCode(NGHttpStatusCode _code) {
-  return ((_code >= 500) && (_code < 600)) ? YES : NO;
+  return ((_code >= 500) && ((int)_code < 600)) ? YES : NO;
 }
 
 #endif /* __NGHttp_NGHttpResponse_H__ */
