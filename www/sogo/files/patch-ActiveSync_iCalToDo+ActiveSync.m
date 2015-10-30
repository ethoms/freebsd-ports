--- ActiveSync/iCalToDo+ActiveSync.m.orig	2015-10-27 02:09:22.473892768 +0800
+++ ActiveSync/iCalToDo+ActiveSync.m	2015-10-27 02:10:00.636887335 +0800
@@ -140,7 +140,7 @@
         {
           [s appendString: @"<Body xmlns=\"AirSyncBase:\">"];
           [s appendFormat: @"<Type>%d</Type>", 1];
-          [s appendFormat: @"<EstimatedDataSize>%d</EstimatedDataSize>", [o length]];
+          [s appendFormat: @"<EstimatedDataSize>%d</EstimatedDataSize>", (int)[o length]];
           [s appendFormat: @"<Data>%@</Data>", o];
           [s appendString: @"</Body>"];
         }
