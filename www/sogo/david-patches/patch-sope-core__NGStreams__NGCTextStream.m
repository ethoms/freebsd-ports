--- ./sope-core/NGStreams/NGCTextStream.m.orig	2013-07-22 14:03:07.000000000 +0100
+++ ./sope-core/NGStreams/NGCTextStream.m	2013-10-09 17:03:32.000000000 +0100
@@ -265,7 +265,7 @@
                  format:
                    @"called writeCharacter: with character code (0x%X)"
                    @" exceeding the maximum system character code (0x%X)",
-                   _character, ((sizeof(unsigned char) * 256) - 1)];
+                   _character, (int)((sizeof(unsigned char) * 256) - 1)];
   }
 
   c = _character;
