--- ./sope-appserver/WEExtensions/WETableView/WETableView.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/WEExtensions/WETableView/WETableView.m	2013-10-09 17:03:32.000000000 +0100
@@ -1525,9 +1525,9 @@
         result = [self decreaseBatchSizeInContext:_ctx];
       else {
         if (self->identifier == nil) {
-          unsigned idx;
+          NSInteger idx;
       
-          idx   = [idxId unsignedIntValue];
+          idx   = [idxId integerValue];
           if (idx < [self->allObjects count] && idx >= 0) {
             _applyItems_(self, cmp, idx);
           }
