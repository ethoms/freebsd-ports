--- ./sope-xml/DOM/DOMQueryPathExpression.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-xml/DOM/DOMQueryPathExpression.m	2013-10-09 17:03:32.000000000 +0100
@@ -318,7 +318,7 @@
   qpexpr = [DOMQueryPathExpression queryPathWithString:_expr];
   //NSLog(@"Expr: %@", qpexpr);
   
-  pred =
+  pred = (_DOMQPPredicateExpression*)
     [[_DOMQPPredicateQPExpression alloc] initWithQueryPathExpression:qpexpr];
   
   return [pred autorelease];
