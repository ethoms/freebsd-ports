# freebsd-ports
Euan Thoms' FreeBSD ports development

## News:

**[22/09/2015]**
Updated www/sogo and devel/sope to v2.3.2.
Updated net/rtpproxy to official ports tree version (2.0.0) and applied improvements to rc script.

## Instructions:

**Bootstrap (Automatic)**

1.) Run the bootstrap script to copy the development tree into the /usr/ports tree.

*NOTE: it expects your full ports tree to be installed to /usr/ports.*

````
# ./bootstrap.sh
````
3.) Now you're ready to build the port as usual.


**Manual way**

1.) Copy the port directories you need into the correct ports tree path.

For example:
````
# cp -r devel/sope /usr/ports/devel/
# cp -r www/sogo /usr/ports/www/
````

2.) Add any relevant UID and GID entries to /usr/ports/UIDs and /usr/ports/GIDs.

For example:
````
# cat UIDs.sogo >> /usr/ports/UIDs
# cat GIDs.sogo >> /usr/ports/GIDs
````

3.) Now you're ready to build the port as usual.
