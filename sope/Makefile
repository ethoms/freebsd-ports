# Created by: Euan Thoms <euan@potensol.com>
# $FreeBSD$

PORTNAME=		sope
PORTVERSION=		2.2.14
#PORTEPOCH=		1
CATEGORIES=		devel gnustep
MASTER_SITES=		http://www.sogo.nu/files/downloads/SOGo/Sources/
DISTNAME=		SOPE-${PORTVERSION}

MAINTAINER=		euan@potensol.com
COMMENT=		Extensive set of GNUstep web application frameworks

LICENSE=		LGPL20

LIB_DEPENDS=		libxml2.so:${PORTSDIR}/textproc/libxml2

WRKSRC=			${WRKDIR}/SOPE

OPTIONS_DEFINE=		LDAP MYSQL PGSQL MEMCACHED
OPTIONS_DEFAULT=	LDAP PGSQL MEMCACHED
OPTIONS_SUB=		yes

LDAP_DESC=		Build with LDAP support
MYSQL_DESC=		Build with MySQL support
PGSQL_DESC=		Build with PostgreSQL support
MEMCACHED_DESC=		Install memcached

USE_GNUSTEP=		yes
USE_GNUSTEP_BASE=	yes
USE_GNUSTEP_CONFIGURE=	yes
USE_GNUSTEP_BUILD=	yes
USE_GNUSTEP_INSTALL=	yes
USE_GNUSTEP_MAKE=	yes
USE_GNUSTEP_LDCONFIG=	${GNUSTEP_LOCAL_LIBRARIES}

CONFIGURE_ARGS+=	--with-gnustep --disable-debug --enable-strip

#SO_MAJOR=	2
#SO_MINOR=	3
#.for _lib in DOM EOControl GDLAccess NGExtensions NGLdap NGMime \
#		NGObjWeb NGStreams SaxObjC WEExtensions \
#		WOExtensions XmlRpc SBJson
#SHARED_LIBS+=	${_lib} ${SO_MAJOR}.${SO_MINOR}
#.endfor

#MAKE_FLAGS+=		MAJOR_VERSION=${SO_MAJOR} MINOR_VERSION=${SO_MINOR}
#MAKE_FLAGS+=		SOPE_MAJOR_VERSION=4 SOPE_MINOR_VERSION=9

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MLDAP}
USE_OPENLDAP=	client
.endif

.if ${PORT_OPTIONS:MPGSQL}
USES+=		pgsql
.endif

.if ${PORT_OPTIONS:MMYSQL}
USE_MYSQL=	client
.endif

.if ${PORT_OPTIONS:MMEMCACHED}
RUN_DEPENDS+=	${LOCALBASE}/bin/memcached:${PORTSDIR}/databases/memcached
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/local/pgsql/lib|/usr/local/lib/postgresql|' ${WRKSRC}/configure
.if ! ${PORT_OPTIONS:MLDAP}
	@${REINPLACE_CMD} -e '/checkLinking "ldap"/d' ${WRKSRC}/configure
.endif
.if ! ${PORT_OPTIONS:MPGSQL}
	@${REINPLACE_CMD} -e '/checkLinking "pq"/d' ${WRKSRC}/configure
.endif
.if ! ${PORT_OPTIONS:MMYSQL}
	@${REINPLACE_CMD} -e '/checkLinking "mysqlclient"/d' ${WRKSRC}/configure
.endif

.include <bsd.port.mk>
