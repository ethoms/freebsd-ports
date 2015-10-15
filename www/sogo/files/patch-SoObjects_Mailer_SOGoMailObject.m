--- SoObjects/Mailer/SOGoMailObject.m.orig	2015-10-12 00:48:44.033544034 +0800
+++ SoObjects/Mailer/SOGoMailObject.m	2015-10-12 00:51:09.761535745 +0800
@@ -765,7 +765,7 @@
 		       [part objectForKey: @"type"],
 		       [part objectForKey: @"subtype"]];
 
-  if (!filename)
+  if (!filename) {
       // We might end up here because of MUA that actually strips the
       // Content-Disposition (and thus, the filename) when mails containing
       // attachments have been forwarded. Thunderbird (2.x) does just that
@@ -773,10 +773,14 @@
       if ([mimeType hasPrefix: @"application/"] ||
 	  [mimeType hasPrefix: @"audio/"] ||
 	  [mimeType hasPrefix: @"image/"] ||
-	  [mimeType hasPrefix: @"video/"])
+	  [mimeType hasPrefix: @"video/"]) {
           filename = [NSString stringWithFormat: @"unknown_%@", path];
-      else if ([mimeType isEqualToString: @"message/rfc822"])
-        filename = [NSString stringWithFormat: @"email_%@.eml", path];
+      }
+      else {
+        if ([mimeType isEqualToString: @"message/rfc822"])
+          filename = [NSString stringWithFormat: @"email_%@.eml", path];
+      }
+  }
   
 
   if (filename)
@@ -820,13 +824,13 @@
 	{
 	  currentPart = [subparts objectAtIndex: i-1];
 	  if (path)
-	    newPath = [NSString stringWithFormat: @"%@.%d", path, i];
+	    newPath = [NSString stringWithFormat: @"%@.%d", path, (int)i];
 	  else
-	    newPath = [NSString stringWithFormat: @"%d", i];
+	    newPath = [NSString stringWithFormat: @"%d", (int)i];
 	  [self _fetchFileAttachmentKeysInPart: currentPart
                                      intoArray: keys
                                       withPath: newPath
-                                     andPrefix: [NSString stringWithFormat: @"%@/%i", prefix, i]];
+                                     andPrefix: [NSString stringWithFormat: @"%@/%i", prefix, (int)i]];
 	}
     }
   else
