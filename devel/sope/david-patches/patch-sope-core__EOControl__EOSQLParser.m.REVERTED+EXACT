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
@@ -722,7 +722,7 @@
     }
     else if ([[(EOAndQualifier *)q qualifiers] count] != 3) {
       NSLog(@"  INVALID: expected 3 subqualifiers, got %i !",
-	    [[(EOAndQualifier *)q qualifiers] count]);
+	    (int)[[(EOAndQualifier *)q qualifiers] count]);
     }
 
     /* check sortordering */
@@ -740,7 +740,7 @@
     }
     else if ([props count] != 14) {
       NSLog(@"  INVALID: invalid attribute count, expected 14, got %i.",
-	    [props count]);
+	    (int)[props count]);
     }
   }
   
