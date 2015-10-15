--- UI/MailerUI/UIxMailListActions.h.orig	2015-10-12 03:45:20.839812321 +0800
+++ UI/MailerUI/UIxMailListActions.h	2015-10-12 03:45:29.934812501 +0800
@@ -43,7 +43,6 @@
 }
 
 - (NSString *) defaultSortKey;
-- (NSString *) imap4SortKey;
 - (NSString *) imap4SortOrdering;
 - (EOQualifier *) searchQualifier;
 - (NSString *) msgLabels;
