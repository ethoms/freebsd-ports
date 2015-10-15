--- SoObjects/Appointments/SOGoAppointmentFolder.m.orig	2015-10-09 15:19:44.154803470 +0800
+++ SoObjects/Appointments/SOGoAppointmentFolder.m	2015-10-09 15:25:42.002786945 +0800
@@ -2387,7 +2387,7 @@
   request = [context request];
   if (!([request isIPhone] || [request isICal4]))
     {
-      gdRT = [self groupDavResourceType];
+      gdRT = (NSArray *) [self groupDavResourceType];
       gdVEventCol = [NSArray arrayWithObjects: [gdRT objectAtIndex: 0],
                   XMLNS_GROUPDAV, nil];
       [colType addObject: gdVEventCol];
