--- SoObjects/SOGo/BSONCodec.m.orig	2015-10-08 10:27:25.726969480 +0800
+++ SoObjects/SOGo/BSONCodec.m	2015-10-08 10:44:13.473901101 +0800
@@ -310,7 +310,7 @@
 
 		case 'q': return 0x12;
 		default:
-			[NSException raise: NSInvalidArgumentException format: @"%@::%s - invalid encoding type '%c'", [self class], _cmd, encoding];
+			[NSException raise: NSInvalidArgumentException format: @"%@::%s - invalid encoding type '%c'", [self class], (char *)NSStringFromSelector(_cmd), encoding];
 	}
 	return 0;
 }
@@ -385,7 +385,7 @@
 	}
 
 
-	[NSException raise: NSInvalidArgumentException format: @"%@::%s - invalid encoding type '%c'", [self class], _cmd, encoding];
+	[NSException raise: NSInvalidArgumentException format: @"%@::%s - invalid encoding type '%c'", [self class], (char *)NSStringFromSelector(_cmd), encoding];
 	return nil;
 }
 
