--- Tools/SOGoToolRemoveDoubles.m.orig	2015-09-17 02:41:31.000000000 +0800
+++ Tools/SOGoToolRemoveDoubles.m	2015-10-15 10:55:54.609166337 +0800
@@ -175,7 +175,7 @@
 
   now = [NSCalendarDate date];
   delSql = [NSString stringWithFormat: @"UPDATE %@"
-                     @" SET c_deleted = 1, c_lastmodified = %d,"
+                     @" SET c_deleted = 1, c_lastmodified = %lu,"
                      @" c_content = ''"
 		     @" WHERE c_name = '%@'",
 		     tableName,
