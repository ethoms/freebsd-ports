--- Tests/Unit/TestiCalRecurrenceCalculator.m.orig	2015-10-13 22:24:36.211231500 +0800
+++ Tests/Unit/TestiCalRecurrenceCalculator.m	2015-10-13 23:05:47.988057201 +0800
@@ -107,7 +107,7 @@
 			    [currentOccurrence descriptionWithCalendarFormat: dateFormat]];
 	  testWithMessage([currentOccurrence isDateOnSameDay: [[occurrences objectAtIndex: j] startDate]], error);
 	}
-      error = [NSString stringWithFormat: @"Unexpected number of occurrences for recurrence rule %@ (found %i, expected %i)",
+      error = [NSString stringWithFormat: @"Unexpected number of occurrences for recurrence rule %@ (found %ld, expected %ld)",
 			[currentRule objectAtIndex: 1],
 			[occurrences count],
 			[currentRule count] - 2];
@@ -211,7 +211,7 @@
 			    [currentOccurrence descriptionWithCalendarFormat: dateFormat]];
 	  testWithMessage([currentOccurrence isDateOnSameDay: [[occurrences objectAtIndex: j] startDate]], error);
 	}
-      error = [NSString stringWithFormat: @"Unexpected number of occurrences for recurrence rule %@ (found %i, expected %i)",
+      error = [NSString stringWithFormat: @"Unexpected number of occurrences for recurrence rule %@ (found %ld, expected %ld)",
 			[currentRule objectAtIndex: 1],
 			[occurrences count],
 			[currentRule count] - 2];
@@ -376,7 +376,7 @@
 			    [currentOccurrence descriptionWithCalendarFormat: dateFormat]];
 	  testWithMessage([currentOccurrence isDateOnSameDay: [[occurrences objectAtIndex: j] startDate]], error);
 	}
-      error = [NSString stringWithFormat: @"Unexpected number of occurrences for recurrence rule %@ (found %i, expected %i)",
+      error = [NSString stringWithFormat: @"Unexpected number of occurrences for recurrence rule %@ (found %ld, expected %ld)",
 			[currentRule objectAtIndex: 1],
 			[occurrences count],
 			[currentRule count] - 2];
