# freebsd-ports
Euan Thoms' FreeBSD ports development

**Instructions:**

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
