--- SOPE/NGCards/iCalRecurrenceRule.m.orig	2015-10-08 09:37:28.117175437 +0800
+++ SOPE/NGCards/iCalRecurrenceRule.m	2015-10-08 09:50:57.392119166 +0800
@@ -309,10 +309,10 @@
       else if ([frequency isEqualToString:@"SECONDLY"])
 	freq = iCalRecurrenceFrequenceSecondly;
       else
-	freq = NSNotFound;
+	freq = (iCalRecurrenceFrequency) NSNotFound;
     }
   else
-    freq = NSNotFound;
+    freq = (iCalRecurrenceFrequency) NSNotFound;
 
   return freq;
 }
