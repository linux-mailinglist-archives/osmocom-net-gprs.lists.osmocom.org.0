Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 768CE4A9D33
	for <lists+osmocom-net-gprs@lfdr.de>; Fri,  4 Feb 2022 17:54:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A8C48283BF;
	Fri,  4 Feb 2022 16:54:24 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hAu4_ADkre6T; Fri,  4 Feb 2022 16:54:24 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id B9C23283C0;
	Fri,  4 Feb 2022 16:54:22 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id CA02238A008F
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Feb 2022 16:54:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9C6002839E
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Feb 2022 16:54:16 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WMIEfSdnjuXI for <osmocom-net-gprs@lists.osmocom.org>;
	Fri,  4 Feb 2022 16:54:15 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by mail.osmocom.org (Postfix) with ESMTPS id 9A0BC2838C
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Feb 2022 16:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643993654; x=1675529654;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=25owBOloXIce/xpHBOuKPNsEf8I1V2XIse0r26HNT8o=;
  b=k0c7HhMPyaL8yNgRMOOjzx3rYwFh0bIo/A7l7Od5SZavSTnE22L8X89j
   WCcMf2Vd2rcTH60fyqVAZV/nnLD63iJi6nCEaPQQcU7hxz0EZJJbddLqM
   qrV7ZrQBPTzEhZhflWFlrtA30uyqTVqQPFvx5I8kfiC5ZuVyNIo43MWgy
   wwJktHUn4z/xAinrB5H1c74GzaCuIp5Zsj0CrKK7Ai6+EHl6L9t20qzZw
   QVzR9fQOcFc3rIet2GJPRvTwNPTDK+mecO9MNUC69bz4KCEwzOg4ObKuD
   Yp4zRTm/FcNPAzbavadpZJyHqZJZh4kDyZqxza5pebTeqZNyOmf3a/XiM
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="247231347"
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600";
   d="scan'208";a="247231347"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Feb 2022 08:53:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600";
   d="scan'208";a="770001698"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga006.fm.intel.com with ESMTP; 04 Feb 2022 08:53:57 -0800
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com [172.22.229.137])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 214Gruoc026625;
	Fri, 4 Feb 2022 16:53:56 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [RFC PATCH net-next v4 1/6] gtp: Allow to create GTP device without FDs
Date: Fri,  4 Feb 2022 17:50:45 +0100
Message-Id: <20220204165045.10518-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220204164929.10356-1-marcin.szycik@linux.intel.com>
References: <20220204164929.10356-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: LPPI6GHOAWHH4EBGW4GKWGYDOPSSN6S7
X-Message-ID-Hash: LPPI6GHOAWHH4EBGW4GKWGYDOPSSN6S7
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/LPPI6GHOAWHH4EBGW4GKWGYDOPSSN6S7/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Currently, when the user wants to create GTP device, he has to
provide file handles to the sockets created in userspace (IFLA_GTP_FD0,
IFLA_GTP_FD1). This behaviour is not ideal, considering the option of
adding support for GTP device creation through ip link. Ip link
application is not a good place to create such sockets.

This patch allows to create GTP device without providing
IFLA_GTP_FD0 and IFLA_GTP_FD1 arguments. If the user does not
provide file handles to the sockets, then GTP module takes care
of creating UDP sockets by itself. Sockets are created with the
commonly known UDP ports used for GTP protocol (GTP0_PORT and
GTP1U_PORT). In this case we don't have to provide encap_destroy
because no extra deinitialization is needed, everything is covered
by udp_tunnel_sock_release.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v4: use ntohs when creating UDP socket
---
 drivers/net/gtp.c | 74 ++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 67 insertions(+), 7 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 24e5c54d06c1..6fa1cfe023ef 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -66,8 +66,10 @@ struct gtp_dev {
=20
 	struct sock		*sk0;
 	struct sock		*sk1u;
+	u8			sk_created;
=20
 	struct net_device	*dev;
+	struct net		*net;
=20
 	unsigned int		role;
 	unsigned int		hash_size;
@@ -320,8 +322,16 @@ static void gtp_encap_disable_sock(struct sock *sk)
=20
 static void gtp_encap_disable(struct gtp_dev *gtp)
 {
-	gtp_encap_disable_sock(gtp->sk0);
-	gtp_encap_disable_sock(gtp->sk1u);
+	if (gtp->sk_created) {
+		udp_tunnel_sock_release(gtp->sk0->sk_socket);
+		udp_tunnel_sock_release(gtp->sk1u->sk_socket);
+		gtp->sk_created =3D false;
+		gtp->sk0 =3D NULL;
+		gtp->sk1u =3D NULL;
+	} else {
+		gtp_encap_disable_sock(gtp->sk0);
+		gtp_encap_disable_sock(gtp->sk1u);
+	}
 }
=20
 /* UDP encapsulation receive handler. See net/ipv4/udp.c.
@@ -664,9 +674,6 @@ static int gtp_newlink(struct net *src_net, struct ne=
t_device *dev,
 	struct gtp_net *gn;
 	int hashsize, err;
=20
-	if (!data[IFLA_GTP_FD0] && !data[IFLA_GTP_FD1])
-		return -EINVAL;
-
 	gtp =3D netdev_priv(dev);
=20
 	if (!data[IFLA_GTP_PDP_HASHSIZE]) {
@@ -677,6 +684,8 @@ static int gtp_newlink(struct net *src_net, struct ne=
t_device *dev,
 			hashsize =3D 1024;
 	}
=20
+	gtp->net =3D src_net;
+
 	err =3D gtp_hashtable_new(gtp, hashsize);
 	if (err < 0)
 		return err;
@@ -844,6 +853,38 @@ static struct sock *gtp_encap_enable_socket(int fd, =
int type,
 	return sk;
 }
=20
+static struct sock *gtp_encap_create_sock(int type, struct gtp_dev *gtp)
+{
+	struct udp_tunnel_sock_cfg tuncfg =3D {};
+	struct udp_port_cfg udp_conf =3D {
+		.local_ip.s_addr	=3D htonl(INADDR_ANY),
+		.family			=3D AF_INET,
+	};
+	struct net *net =3D gtp->net;
+	struct socket *sock;
+	int err;
+
+	if (type =3D=3D UDP_ENCAP_GTP0)
+		udp_conf.local_udp_port =3D ntohs(GTP0_PORT);
+	else if (type =3D=3D UDP_ENCAP_GTP1U)
+		udp_conf.local_udp_port =3D ntohs(GTP1U_PORT);
+	else
+		return ERR_PTR(-EINVAL);
+
+	err =3D udp_sock_create(net, &udp_conf, &sock);
+	if (err)
+		return ERR_PTR(err);
+
+	tuncfg.sk_user_data =3D gtp;
+	tuncfg.encap_type =3D type;
+	tuncfg.encap_rcv =3D gtp_encap_recv;
+	tuncfg.encap_destroy =3D NULL;
+
+	setup_udp_tunnel_sock(net, sock, &tuncfg);
+
+	return sock->sk;
+}
+
 static int gtp_encap_enable(struct gtp_dev *gtp, struct nlattr *data[])
 {
 	struct sock *sk1u =3D NULL;
@@ -868,11 +909,30 @@ static int gtp_encap_enable(struct gtp_dev *gtp, st=
ruct nlattr *data[])
 		}
 	}
=20
+	if (!data[IFLA_GTP_FD0] && !data[IFLA_GTP_FD1]) {
+		sk0 =3D gtp_encap_create_sock(UDP_ENCAP_GTP0, gtp);
+		if (IS_ERR(sk0))
+			return PTR_ERR(sk0);
+
+		sk1u =3D gtp_encap_create_sock(UDP_ENCAP_GTP1U, gtp);
+		if (IS_ERR(sk1u)) {
+			udp_tunnel_sock_release(sk0->sk_socket);
+			return PTR_ERR(sk1u);
+		}
+		gtp->sk_created =3D true;
+	}
+
 	if (data[IFLA_GTP_ROLE]) {
 		role =3D nla_get_u32(data[IFLA_GTP_ROLE]);
 		if (role > GTP_ROLE_SGSN) {
-			gtp_encap_disable_sock(sk0);
-			gtp_encap_disable_sock(sk1u);
+			if (gtp->sk_created) {
+				udp_tunnel_sock_release(sk0->sk_socket);
+				udp_tunnel_sock_release(sk1u->sk_socket);
+				gtp->sk_created =3D false;
+			} else {
+				gtp_encap_disable_sock(sk0);
+				gtp_encap_disable_sock(sk1u);
+			}
 			return -EINVAL;
 		}
 	}
--=20
2.31.1

