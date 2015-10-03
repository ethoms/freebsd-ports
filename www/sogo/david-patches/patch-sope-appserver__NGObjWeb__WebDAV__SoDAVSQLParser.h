--- ./sope-appserver/NGObjWeb/WebDAV/SoDAVSQLParser.h.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WebDAV/SoDAVSQLParser.h	2013-10-09 17:03:32.000000000 +0100
@@ -64,7 +64,7 @@
   consume:(BOOL)consume;
 - (BOOL)parseQualifier:(EOQualifier **)result
   from:(unichar **)pos length:(unsigned *)len;
-- (BOOL)parseScope:(NSString **)_scope:(NSString **)_entity
+- (BOOL)parseScope:(NSString **)_scope :(NSString **)_entity
   from:(unichar **)pos length:(unsigned *)len;
 
 - (BOOL)parseColumnName:(NSString **)result
