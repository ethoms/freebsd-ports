--- UI/Contacts/UIxContactFolderActions.m.orig	2015-10-12 02:35:08.415105259 +0800
+++ UI/Contacts/UIxContactFolderActions.m	2015-10-12 02:37:28.637102880 +0800
@@ -78,9 +78,9 @@
                                     inContext: [self context]
                                       acquire: NO];
       if ([currentChild respondsToSelector: @selector (vCard)])
-        [content appendFormat: [[currentChild ldifRecord] ldifRecordAsString]];
+        [content appendFormat: @"%@", [[currentChild ldifRecord] ldifRecordAsString]];
       else if ([currentChild respondsToSelector: @selector (vList)])
-        [content appendFormat: [[currentChild vList] ldifString]];
+        [content appendFormat: @"%@", [[currentChild vList] ldifString]];
       [content appendString: @"\n"];
     }
 
