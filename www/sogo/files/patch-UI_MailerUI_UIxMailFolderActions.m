--- UI/MailerUI/UIxMailFolderActions.m.orig	2015-10-12 04:08:23.478716523 +0800
+++ UI/MailerUI/UIxMailFolderActions.m	2015-10-12 04:11:58.350711826 +0800
@@ -383,7 +383,7 @@
 - (WOResponse *) moveMessagesAction
 {
   SOGoMailFolder *co;
-  SOGoUserSettings *us;
+  SOGoUserSettings *us=nil;
   WOResponse *response;
   NSArray *uids;
   NSString *value, *destinationFolder;
