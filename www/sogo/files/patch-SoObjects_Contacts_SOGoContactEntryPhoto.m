--- SoObjects/Contacts/SOGoContactEntryPhoto.m.orig	2015-10-12 00:20:43.010660719 +0800
+++ SoObjects/Contacts/SOGoContactEntryPhoto.m	2015-10-12 00:21:07.660013539 +0800
@@ -59,7 +59,7 @@
 
       [response setHeader: [self davContentType] forKey: @"content-type"];
       [response setHeader: [NSString stringWithFormat:@" %d",
-                                     [data length]]
+                                     (int)[data length]]
                    forKey: @"content-length"];
       [response setContent: data];
     }
