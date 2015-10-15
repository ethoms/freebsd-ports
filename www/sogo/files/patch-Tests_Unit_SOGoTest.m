--- Tests/Unit/SOGoTest.m.orig	2015-10-13 21:27:11.658467928 +0800
+++ Tests/Unit/SOGoTest.m	2015-10-13 21:28:18.545460408 +0800
@@ -245,10 +245,10 @@
       sc2 = _stringForCharacterAtIndex(i, str2, length2);
 
       if ([sc1 isEqualToString: sc2]) 
-        finalSTR = [finalSTR stringByAppendingFormat: @"%u |%@|\n", i, sc1];
+        finalSTR = [finalSTR stringByAppendingFormat: @"%lu |%@|\n", i, sc1];
       else
         {
-          finalSTR = [finalSTR stringByAppendingFormat: @"%u |%@|%@|<--\n", i, sc1, sc2];
+          finalSTR = [finalSTR stringByAppendingFormat: @"%lu |%@|%@|<--\n", i, sc1, sc2];
           differencesFound = YES;
         }
     }
