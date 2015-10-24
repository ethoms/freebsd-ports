--- sope-core/NGExtensions/FdExt.subproj/NSString+Encoding.m.orig	2015-10-07 08:04:38.136511581 +0800
+++ sope-core/NGExtensions/FdExt.subproj/NSString+Encoding.m	2015-10-07 08:08:49.915493258 +0800
@@ -209,7 +209,7 @@
   tm           = outbuf;
   outbytesleft = outlen;
 
-  write = iconv(type, &inbuf, &inbytesleft, &tm, &outbytesleft);
+  write = iconv(type, (void*)&inbuf, &inbytesleft, &tm, &outbytesleft);
 
   if (write == (size_t)-1) {
     if (errno == EILSEQ) {
