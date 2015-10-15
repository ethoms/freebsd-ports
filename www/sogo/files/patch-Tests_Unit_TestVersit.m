--- Tests/Unit/TestVersit.m.orig	2015-10-13 22:02:35.703319178 +0800
+++ Tests/Unit/TestVersit.m	2015-10-13 22:10:50.805284923 +0800
@@ -34,6 +34,10 @@
 
 - (void) test_rendering
 {
+
+#pragma clang diagnostic push
+#pragma clang diagnostic ignored "-Wobjc-string-compare"
+
   CardElement *element;
   CardVersitRenderer *renderer;
   NSString *result;
@@ -137,10 +141,17 @@
   testEquals(result, @"ELEM:NONEMPTY=coucou\r\n");
 
   /** tests about parameters handling could be nice */
+
+#pragma clang diagnostic pop
+
 }
 
 - (void) test_parsing
 {
+
+#pragma clang diagnostic push
+#pragma clang diagnostic ignored "-Wobjc-string-compare"
+
   CardGroup *group;
   CardElement *element;
   NSString *versit;
@@ -201,6 +212,9 @@
   element = [group firstChildWithTag: @"element"];
   testEquals([element flattenedValueAtIndex: 0 forKey: @""], @"value");
   testEquals([element value: 0 ofAttribute: @"param1"], @"paramvalue1, with comma");
+
+#pragma clang diagnostic pop
+
 }
 
 @end
