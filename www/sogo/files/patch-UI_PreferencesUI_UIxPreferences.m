--- UI/PreferencesUI/UIxPreferences.m.orig	2015-10-12 17:26:24.474415189 +0800
+++ UI/PreferencesUI/UIxPreferences.m	2015-10-12 17:28:42.117407234 +0800
@@ -1366,15 +1366,15 @@
           if ([account updateFilters])
             // If Sieve is not enabled, the SOGoSieveManager will immediatly return a positive answer
             // See [SOGoSieveManager updateFiltersForAccount:withUsername:andPassword:]
-            results = [self responseWithStatus: 200
+            results = (id <WOActionResults>)[self responseWithStatus: 200
                          andJSONRepresentation: [NSDictionary dictionaryWithObjectsAndKeys: [NSNumber numberWithBool:hasChanged], @"hasChanged", nil]];
 
           else
-            results = [self responseWithStatus: 502
+            results = (id <WOActionResults>)[self responseWithStatus: 502
                          andJSONRepresentation: [NSDictionary dictionaryWithObjectsAndKeys: @"Connection error", @"textStatus", nil]];
         }
       else
-        results = [self responseWithStatus: 503
+        results = (id <WOActionResults>)[self responseWithStatus: 503
                      andJSONRepresentation: [NSDictionary dictionaryWithObjectsAndKeys: @"Service temporarily unavailable", @"textStatus", nil]];
     }
   else
