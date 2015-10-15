--- ./sope-core/EOControl/EOSQLParser.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/EOControl/EOSQLParser.m	2013-10-09 17:03:32.000000000 +0100
@@ -404,7 +404,7 @@
   return YES;
 }
 
-- (BOOL)parseScope:(NSString **)_scope:(NSString **)_entity
+- (BOOL)parseScope:(NSString **)_scope :(NSString **)_entity
   from:(unichar **)pos length:(unsigned *)len
 {
   /* 
