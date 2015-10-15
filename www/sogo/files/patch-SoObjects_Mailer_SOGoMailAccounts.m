--- SoObjects/Mailer/SOGoMailAccounts.m.orig	2015-09-17 02:41:30.000000000 +0800
+++ SoObjects/Mailer/SOGoMailAccounts.m	2015-10-14 05:44:19.467409671 +0800
@@ -41,6 +41,8 @@
 
 #define XMLNS_INVERSEDAV @"urn:inverse:params:xml:ns:inverse-dav"
 
+// TODO: prune redundant methods
+
 @implementation SOGoMailAccounts
 
 - (NSArray *) mailAccounts
@@ -206,6 +208,9 @@
 </D:multistatus>
 
 */
+
+/* No longer in use, causes objc-method-access warning
+
 - (NSException *) setDavMailsLabels: (NSString *) newLabels
 {
   id <DOMElement> documentElement, labelNode;
@@ -253,5 +258,6 @@
 
   return nil;
 }
+*/
 
 @end /* SOGoMailAccounts */
