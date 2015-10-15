--- SoObjects/SOGo/SOGoCacheGCSObject.m.orig	2015-10-08 11:38:29.151675385 +0800
+++ SoObjects/SOGo/SOGoCacheGCSObject.m	2015-10-08 12:09:29.854549665 +0800
@@ -87,7 +87,7 @@
     {
       tableUrl = nil;
       initialized = NO;
-      objectType = -1;
+      objectType = (SOGoCacheObjectType) -1;
       deleted = NO;
       version = 0;
     }
@@ -383,7 +383,7 @@
                            @"SELECT * FROM %@ WHERE c_path = %@",
                          tableName, pathValue];
   if (startVersion > -1)
-    [sql appendFormat: @" AND c_version > %d", startVersion];
+    [sql appendFormat: @" AND c_version > %d", (int)startVersion];
 
   /* execution */
   records = [self performSQLQuery: sql];
@@ -411,18 +411,16 @@
 
   tableName = [self tableName];
   adaptor = [self tableChannelAdaptor];
-  pathValue = [adaptor formatValue: [NSString stringWithFormat: @"/%@", deviceId]
-                      forAttribute: textColumn];
 
   /* query */
   sql = [NSMutableString stringWithFormat:
                            @"SELECT * FROM %@ WHERE c_type = %d AND c_deleted <> 1", tableName, objectType];
 
   if (startVersion > -1)
-    [sql appendFormat: @" AND c_version > %d", startVersion];
+    [sql appendFormat: @" AND c_version > %d", (int)startVersion];
 
   if (deviceId) {
-    pathValue = [adaptor formatValue: [NSString stringWithFormat: @"/%@%", deviceId]
+    pathValue = [adaptor formatValue: [NSString stringWithFormat: @"/%@", deviceId]
                       forAttribute: textColumn];
     [sql appendFormat: @" AND c_path like %@", pathValue];
   }
@@ -546,7 +544,7 @@
   
   lastModifiedValue = (NSInteger) [lastModified timeIntervalSince1970];
   
-  if (objectType == -1)
+  if (objectType == (SOGoCacheObjectType) -1)
     [NSException raise: @"SOGoCacheIOException"
                 format: @"object type has not been set for object '%@'",
                  self];
@@ -576,7 +574,7 @@
                          @")"),
                       tableName,
                       pathValue, parentPathValue, objectType,
-                      creationDateValue, lastModifiedValue,
+                      (int)creationDateValue, (int)lastModifiedValue,
                       propsValue];
       isNew = NO;
     }
@@ -590,7 +588,7 @@
                          @"      c_version = %d, c_content = %@"
                          @" WHERE c_path = %@"),
                       tableName,
-                      lastModifiedValue, deletedValue, version, propsValue,
+                      (int)lastModifiedValue, (int)deletedValue, (int)version, propsValue,
                     pathValue];
     }
 
