--- ActiveSync/iCalEvent+ActiveSync.m.orig	2015-10-27 02:11:22.361884084 +0800
+++ ActiveSync/iCalEvent+ActiveSync.m	2015-10-27 02:11:55.645882870 +0800
@@ -285,7 +285,7 @@
         {
           [s appendString: @"<Body xmlns=\"AirSyncBase:\">"];
           [s appendFormat: @"<Type>%d</Type>", 1];
-          [s appendFormat: @"<EstimatedDataSize>%d</EstimatedDataSize>", [o length]];
+          [s appendFormat: @"<EstimatedDataSize>%d</EstimatedDataSize>", (int)[o length]];
           [s appendFormat: @"<Data>%@</Data>", o];
           [s appendString: @"</Body>"];
        }
