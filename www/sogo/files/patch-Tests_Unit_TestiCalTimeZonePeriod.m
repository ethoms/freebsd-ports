--- Tests/Unit/TestiCalTimeZonePeriod.m.orig	2015-10-13 22:12:21.064282266 +0800
+++ Tests/Unit/TestiCalTimeZonePeriod.m	2015-10-13 22:23:02.608233950 +0800
@@ -80,8 +80,8 @@
       testWithMessage ((NSInteger) [testDate timeIntervalSince1970]
                        == occurrenceSeconds[count],
                        ([NSString stringWithFormat:
-                                    @"test %d: seconds do not match:"
-                                  @" delta = %d", count, delta]));
+                                    @"test %ld: seconds do not match:"
+                                  @" delta = %ld", count, delta]));
     }
 }
 
