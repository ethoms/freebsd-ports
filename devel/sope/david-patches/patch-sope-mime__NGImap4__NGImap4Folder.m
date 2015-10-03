--- ./sope-mime/NGImap4/NGImap4Folder.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGImap4/NGImap4Folder.m	2013-10-09 17:03:32.000000000 +0100
@@ -646,11 +646,11 @@
       [m release];
     }
   }
-  m = [mes copy];
+  NSArray *a = [mes copy];
   [mes release]; mes = nil;
   [pool release];
   
-  return [m autorelease];;
+  return [a autorelease];;
 }
 
 - (NSArray *)_buildMessagesFromFetch:(NSDictionary *)_fetch {
