--- ./sope-appserver/NGObjWeb/WOHttpAdaptor/WORequest+Adaptor.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WOHttpAdaptor/WORequest+Adaptor.m	2013-10-09 17:03:32.000000000 +0100
@@ -35,7 +35,7 @@
   if (pi == nil) pi = [[NSProcessInfo processInfo] retain];
   
   tmp = [pi procStatDictionary];
-  ASSIGN(self->startDate,       _startDate);
+  ASSIGN(self->startDate,       (NSCalendarDate*)_startDate);
   ASSIGN(self->startStatistics, tmp);
 }
 
