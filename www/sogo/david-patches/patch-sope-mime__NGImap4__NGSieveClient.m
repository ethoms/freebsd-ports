--- ./sope-mime/NGImap4/NGSieveClient.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGImap4/NGSieveClient.m	2013-10-09 17:03:32.000000000 +0100
@@ -444,14 +444,14 @@
     NSString *s;
     
     s = [NSString stringWithFormat:@"AUTHENTICATE \"PLAIN\" {%d+}\r\n%s",
-                  [auth length], [auth bytes]];
+                  (int)[auth length], [auth bytes]];
     map = [self processCommand:s];
   }
   else {
     NSString *s;
     
     s = [NSString stringWithFormat:@"AUTHENTICATE \"PLAIN\" {%d+}\r\n%s",
-                  [auth length], [auth bytes]];
+                  (int)[auth length], [auth bytes]];
     map = [self processCommand:s
                 logText:@"AUTHENTICATE \"PLAIN\" {%d+}\r\nLOGIN:PASSWORD\r\n"];
   }
@@ -548,7 +548,7 @@
   s = [s stringByAppendingString:_name];
   s = [s stringByAppendingString:@"\" "];
   s = [s stringByAppendingFormat:@"{%d+}\r\n%@",
-         [_script lengthOfBytesUsingEncoding: NSUTF8StringEncoding],
+         (int)[_script lengthOfBytesUsingEncoding: NSUTF8StringEncoding],
          _script];
   map = [self processCommand:s];
   return [self normalizeResponse:map];
