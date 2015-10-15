--- sope-mime/NGImap4/NGImap4Client.h.orig	2015-10-14 02:06:21.530314638 +0800
+++ sope-mime/NGImap4/NGImap4Client.h	2015-10-14 02:06:37.040306987 +0800
@@ -195,6 +195,14 @@
   qualifierString:(NSString *)_qualString
   encoding:(NSString *)_encoding;
 
+/* Previously in Private category, but required by SoObjects/Mailer/SOGoMailBaseObject.m */
+
+- (NGHashMap *)processCommand:(NSString *)_command;
+- (NGHashMap *)processCommand:(NSString *)_command withTag:(BOOL)_tag;
+- (NGHashMap *)processCommand:(NSString *)_command withTag:(BOOL)_tag
+  withNotification:(BOOL)_notification;
+- (NGHashMap *)processCommand:(NSString *)_command logText:(NSString *)_txt;
+
 @end
 
 #endif /* __SOPE_NGImap4_NGImap4Client_H__ */
