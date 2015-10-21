#!/bin/sh

sed -i.bak -e '/^\#  warning.*/d' sope-core/NGExtensions/FdExt.subproj/NSObject+Logs.m ; sed -i.bak -e '/^\#warning.*/d' sope-appserver/NGObjWeb/DynamicElements/WORadioButton.m ; sed -i.bak -e '/^\#  warning.*/d' sope-gdl1/GDLAccess/EOFault.m ; sed -i.bak -e '/^\#  warning.*/d' sope-gdl1/GDLAccess/EOFaultHandler.m ; sed -i.bak -e '/^_escapeHtmlValue.*/,+26d' sope-appserver/NGObjWeb/WOMessage.m ; sed -i.bak -e '/^_escapeAttrValue.*/,+40d' sope-appserver/NGObjWeb/WOMessage.m ; sed -i.bak -e '/^static inline void/d' sope-appserver/NGObjWeb/WOMessage.m

