# Created by: Euan Thoms <euan@potensol.com>
# $FreeBSD$

PORTNAME=	rtpproxy
PORTVERSION=	2.0.0
CATEGORIES=	net
MASTER_SITES=	https://github.com/sippy/rtpproxy/archive/
DISTNAME=	v${PORTVERSION}

MAINTAINER=	euan@potensol.com
COMMENT=	High-performance RTP proxy server for the SIP Routers

LICENSE=	BSD2CLAUSE

LIB_DEPENDS=	libgsm.so:${PORTSDIR}/audio/gsm

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

USE_RC_SUBR=	rtpproxy

GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LIBS+=		-L${LOCALBASE}/lib

USERS=		${PORTNAME}
GROUPS=		${PORTNAME}

.include <bsd.port.mk>
