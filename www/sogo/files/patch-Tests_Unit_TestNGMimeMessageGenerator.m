--- Tests/Unit/TestNGMimeMessageGenerator.m.orig	2015-10-13 23:27:44.267969037 +0800
+++ Tests/Unit/TestNGMimeMessageGenerator.m	2015-10-13 23:29:30.792958515 +0800
@@ -117,7 +117,7 @@
       NSString *diff = [self stringFromDiffBetween: [NSString stringWithString: resultString]
                                                and: [NSString stringWithString: expected]];
       NSString *testErrorMsg = [NSString
-                             stringWithFormat: @">> For %@ header received:\n%@[END]\n>> instead of:\n%@[END]\n>> for:\n%@\n>> diff:\n%@\n>> lengthReceived: %u lengthExpected: %u",
+                             stringWithFormat: @">> For %@ header received:\n%@[END]\n>> instead of:\n%@[END]\n>> for:\n%@\n>> diff:\n%@\n>> lengthReceived: %lu lengthExpected: %lu",
                               header,
                               resultString,
                               expected,
