--- SoObjects/Mailer/SOGoMailBodyPart.m.orig	2015-10-11 23:55:35.353760677 +0800
+++ SoObjects/Mailer/SOGoMailBodyPart.m	2015-10-11 23:58:39.164751566 +0800
@@ -396,7 +395,7 @@
 	    mimeType = @"application/octet-stream";
 	  
 	  [response setHeader: mimeType forKey: @"content-type"];
-	  [response setHeader: [NSString stringWithFormat:@"%d", [data length]]
+	  [response setHeader: [NSString stringWithFormat:@"%d", (int)[data length]]
 		    forKey: @"content-length"];
   
 	  if (asAttachment)
