--- Tools/SOGoToolManageEAS.m.orig	2015-10-13 09:50:19.138347381 +0800
+++ Tools/SOGoToolManageEAS.m	2015-10-13 19:29:28.210951778 +0800
@@ -227,7 +227,7 @@
 
               NSMutableString *sql;
 
-              sql = [NSMutableString stringWithFormat: @"DELETE FROM %@" @" WHERE c_path like '/%@%'", [oc tableName], deviceId];
+              sql = [NSMutableString stringWithFormat: @"DELETE FROM %@ WHERE c_path like '/%@'", [oc tableName], deviceId];
 
               [oc performBatchSQLQueries: [NSArray arrayWithObject: sql]];
               rc = YES;
