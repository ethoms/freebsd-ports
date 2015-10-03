--- ./sope-appserver/NGObjWeb/WebDAV/SoDAVSQLParser.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/WebDAV/SoDAVSQLParser.m	2013-10-09 17:03:32.000000000 +0100
@@ -396,7 +396,7 @@
   return YES;
 }
 
-- (BOOL)parseScope:(NSString **)_scope:(NSString **)_entity
+- (BOOL)parseScope:(NSString **)_scope :(NSString **)_entity
   from:(unichar **)pos length:(unsigned *)len
 {
   /* 
@@ -749,7 +749,7 @@
     }
     else if ([[(EOAndQualifier *)q qualifiers] count] != 3) {
       NSLog(@"  INVALID: expected 3 subqualifiers, got %i !",
-	    [[(EOAndQualifier *)q qualifiers] count]);
+	    (int)[[(EOAndQualifier *)q qualifiers] count]);
     }
 
     /* check sortordering */
@@ -767,7 +767,7 @@
     }
     else if ([props count] != 14) {
       NSLog(@"  INVALID: invalid attribute count, expected 14, got %i.",
-	    [props count]);
+	    (int)[props count]);
     }
   }
   
