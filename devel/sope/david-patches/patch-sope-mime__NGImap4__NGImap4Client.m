--- ./sope-mime/NGImap4/NGImap4Client.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGImap4/NGImap4Client.m	2013-10-09 17:03:32.000000000 +0100
@@ -629,7 +629,7 @@
 
   if (plength > 0)
     s = [NSString stringWithFormat:@"login \"%@\" {%d}",
-		  self->login, plength];
+		  self->login, (int)plength];
   else
     s = [NSString stringWithFormat:@"login \"%@\" \"\"", self->login];
 
@@ -1077,7 +1077,7 @@
   
   cmd  = [NSString stringWithFormat:
                      @"UID FETCH 1:* (UID) (CHANGEDSINCE %llu VANISHED)",
-                   _modseq];
+                   (unsigned long long)_modseq];
   fetchres = [self processCommand:cmd];
   result   = [[self->normer normalizeFetchResponse:fetchres] retain];
   [pool release];
@@ -1203,7 +1203,7 @@
   
   icmd = [NSString stringWithFormat:@"append \"%@\" (%@) {%d}",
                    _folder, [flags componentsJoinedByString:@" "],
-                   [rfc822Data length]];
+                   (int)[rfc822Data length]];
   result = [self processCommand:icmd
                  withTag:YES withNotification:NO];
   
