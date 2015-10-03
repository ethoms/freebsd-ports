--- ./sope-appserver/NGObjWeb/Associations/WOKeyPathAssociation.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-appserver/NGObjWeb/Associations/WOKeyPathAssociation.m	2013-10-09 17:03:32.000000000 +0100
@@ -1049,7 +1049,7 @@
             break;
           }
           case _C_UCHR: {
-            if ((_value < 0) || (_value > 255))
+            if (_value > 255)
               [self errorWithFormat:
 		      @"value (%i) out of range for uchar!", _value];
             sm.ucmethod(_wo, setSel, (unsigned char)_value);
@@ -1397,10 +1397,10 @@
       return [StringClass stringWithFormat:@"%d", retValue.sint];
     case _C_ULNG_LNG:
       if (IS_NUMSTR(retValue.ullong)) return numStrings[retValue.ullong];
-      return [StringClass stringWithFormat:@"%ull", retValue.ullong];
+      return [StringClass stringWithFormat:@"%llu", retValue.ullong];
     case _C_LNG_LNG:
       if (IS_NUMSTR(retValue.llong)) return numStrings[retValue.llong];
-      return [StringClass stringWithFormat:@"%ll", retValue.llong];
+      return [StringClass stringWithFormat:@"%lld", retValue.llong];
     case _C_UCHR:
       if (IS_UNUMSTR(retValue.c)) return numStrings[retValue.c];
       return [StringClass stringWithFormat:@"%d", (int)retValue.c];
