--- ./sope-core/NGStreams/NGLocalSocketAddress.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGStreams/NGLocalSocketAddress.m	2013-10-09 17:03:32.000000000 +0100
@@ -77,8 +77,8 @@
         sizeof(((struct sockaddr_un *)self->address)->sun_path)) {
       
       NSLog(@"LocalDomain name too long: maxlen=%i, len=%i, path=%@",
-            sizeof(((struct sockaddr_un *)self->address)->sun_path),
-            [_path cStringLength],
+            (int)sizeof(((struct sockaddr_un *)self->address)->sun_path),
+            (int)[_path cStringLength],
             _path);
       [NSException raise:NSInvalidArgumentException
                    format:@"path to long as local domain socket address !"];
@@ -100,8 +100,8 @@
   int      addressCounter = 0;
   NSString *newPath;
   
-  newPath = [NSString stringWithFormat:@"_ngsocket_%p_%p_%03d",
-                        getpid(), [NSThread currentThread], addressCounter];
+  newPath = [NSString stringWithFormat:@"_ngsocket_%d_%p_%03d",
+                        (int)getpid(), [NSThread currentThread], addressCounter];
   newPath = [socketDirectoryPath stringByAppendingPathComponent:newPath];
 
   return [self initWithPath:newPath];
