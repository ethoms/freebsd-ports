# Created by: sobomax
# $FreeBSD: head/net/rtpproxy/Makefile 365277 2014-08-18 11:52:27Z wg $

PORTNAME=	rtpproxy
PORTVERSION=	1.2.1
PORTREVISION=	2
CATEGORIES=	net
MASTER_SITES=	http://www.rtpproxy.org/chrome/site/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	High-performance RTP proxy server for Kamailio (Formerly known as OpenSER and SER)

LICENSE=	BSD2CLAUSE

LIB_DEPENDS=	libgsm.so:${PORTSDIR}/audio/gsm

GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LIBS+=		-L${LOCALBASE}/lib

USERS=		${PORTNAME}
GROUPS=		${PORTNAME}

post-build:
	${SED} 's|%%PREFIX%%|${PREFIX}|g ; s|%%RC_SUBR%%|/etc/rc.subr|g' \
	    ${WRKSRC}/freebsd/rtpproxy.in > ${WRKDIR}/rtpproxy

post-install:
	${INSTALL_SCRIPT} ${WRKDIR}/rtpproxy ${STAGEDIR}${PREFIX}/etc/rc.d/rtpproxy

.include <bsd.port.mk>
