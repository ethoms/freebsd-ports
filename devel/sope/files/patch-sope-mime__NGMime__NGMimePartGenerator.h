--- ./sope-mime/NGMime/NGMimePartGenerator.h.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-mime/NGMime/NGMimePartGenerator.h	2013-10-09 17:03:32.000000000 +0100
@@ -149,7 +149,7 @@
   The delegate can select which NGMimeBodyGenerator should de used
   for generate the given part.
 */  
-- (id<NGMimePartGenerator>)multipartBodyGenerator:(id<NGMimeBodyGenerator>)
+- (id<NGMimePartGenerator>)multipartBodyGenerator:(id<NGMimeBodyGenerator>)aGenerator
   generatorForPart:(id<NGMimePart>)_part;
 
 - (BOOL)useMimeData;
