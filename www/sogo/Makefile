# Created by: Euan Thoms <euan@potensol.com>
# $FreeBSD$

PORTNAME=		sogo
PORTVERSION=		2.2.14
PORTREVISION=		1
CATEGORIES=		www gnustep
MASTER_SITES=		http://www.sogo.nu/files/downloads/SOGo/Sources/
DISTNAME=		SOGo-${PORTVERSION}

MAINTAINER=		euan@potensol.com
COMMENT=		Groupware server with a focus on scalability and open standards

LICENSE=		GPLv2

BUILD_DEPENDS=		${GNUSTEP_LOCAL_LIBRARIES}/libDOM.so:${PORTSDIR}/devel/sope
LIB_DEPENDS=		libmemcached.so:${PORTSDIR}/databases/libmemcached \
			libcurl.so:${PORTSDIR}/ftp/curl
RUN_DEPENDS:=		${BUILD_DEPENDS}

USERS=			sogod
GROUPS=			sogod

USE_GNUSTEP=		yes
USE_GNUSTEP_BASE=	yes
USE_GNUSTEP_CONFIGURE=	yes
USE_GNUSTEP_BUILD=	yes
USE_GNUSTEP_INSTALL=	yes
USE_GNUSTEP_MAKE=	yes

USE_GNUSTEP_LDCONFIG=	${GNUSTEP_LOCAL_LIBRARIES}/sogo

USE_RC_SUBR=		sogod

SUB_LIST+=		GNUSTEP_LOCAL_TOOLS=${GNUSTEP_LOCAL_TOOLS} \
			GNUSTEP_MAKEFILES=${GNUSTEP_MAKEFILES}

CONFIGURE_ARGS=		--disable-debug --enable-strip

.include <bsd.port.options.mk>

post-patch:
	@${GREP} -rlF '/etc/sogo' ${WRKSRC} \
		| ${XARGS} ${REINPLACE_CMD} 's#/etc/sogo#${PREFIX}/etc/sogo#g'

post-stage:
	@${MKDIR} ${STAGEDIR}/var/spool/sogo
	@${MKDIR} ${STAGEDIR}${ETCDIR}
	(cp ${WRKSRC}/Scripts/sogo.conf ${STAGEDIR}${ETCDIR}/sogo.conf.sample)
	(cp ${FILESDIR}/sieve.creds.sample ${STAGEDIR}${ETCDIR}/)
	(cp ${FILESDIR}/ealarms-notify.creds.sample ${STAGEDIR}${ETCDIR}/)
	(cp ${FILESDIR}/cron-ealarms-notify.sample ${STAGEDIR}${PREFIX}/GNUstep/Local/Tools/Admin/)
	(cp ${FILESDIR}/cron-expire-autoreply.sample ${STAGEDIR}${PREFIX}/GNUstep/Local/Tools/Admin/)

.include <bsd.port.mk>
