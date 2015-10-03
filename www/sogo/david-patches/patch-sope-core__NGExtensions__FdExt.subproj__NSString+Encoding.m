--- ./sope-core/NGExtensions/FdExt.subproj/NSString+Encoding.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGExtensions/FdExt.subproj/NSString+Encoding.m	2013-10-09 17:03:32.000000000 +0100
@@ -197,7 +197,7 @@
   inbuf      = NULL;
   outbuf     = NULL;
   
-  if ((type == (iconv_t)-1)) {
+  if (type == (iconv_t)-1) {
     [self logWithFormat:@"%s: Could not handle iconv encoding. FromEncoding:%@"
           @" to encoding:%@", __PRETTY_FUNCTION__, _fromEncode, _toEncode];
     goto CLEAR_AND_RETURN;
@@ -209,7 +209,7 @@
   tm           = outbuf;
   outbytesleft = outlen;
 
-  write = iconv(type, &inbuf, &inbytesleft, &tm, &outbytesleft);
+  write = iconv(type, (void*)&inbuf, &inbytesleft, &tm, &outbytesleft);
 
   if (write == (size_t)-1) {
     if (errno == EILSEQ) {
