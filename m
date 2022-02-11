Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 893644B2C35
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 11 Feb 2022 18:58:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4B5CA283D3;
	Fri, 11 Feb 2022 17:58:32 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oZYsx9RPC4kF; Fri, 11 Feb 2022 17:58:31 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 58242282E5;
	Fri, 11 Feb 2022 17:58:27 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id F3A2138A0093
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 17:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C434D2838E
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 17:58:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 06TOiDnDo7Zq for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 11 Feb 2022 17:58:22 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mail.osmocom.org (Postfix) with ESMTPS id 35B39282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 17:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1644602301; x=1676138301;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=UmmtxBglVq6ahQ5bT+aIj/w3lzTTCs4uBlcnTwh+KmI=;
  b=DsqVmGnXTVEnPHP0AbldcmcqbRgLExDkqFB4SN73sKIoZ2QSpMgH6BeQ
   YpL5o2AAznACWFloOGFqRDlg1ips1UxIH4zRN2AXLgEygPlAk2EjdezKV
   eRBHX9N9ijaaWSDcgvAzEyDpIj/ypb4TQAcuQrM4dqCv3AJ62vf1N+Z24
   U4DvddVGCUFEE4mESPuqyYZSV06/xtfiKBMNBPN2Y/d2N8D3aoHFUl6qJ
   yDfq8nxwgf/aHjJZWS4LtdgpB1sBrLh1Cr7biM2ZTChK+GfVDljwm93E+
   xgWt4InNeT2AOtyBMdkGW2RG2dtcfQK5PcJNDPMUUUs3h2VB6HRmdvX84
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10255"; a="237182114"
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600";
   d="scan'208";a="237182114"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2022 09:58:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600";
   d="scan'208";a="537709622"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga007.fm.intel.com with ESMTP; 11 Feb 2022 09:58:15 -0800
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com [172.22.229.137])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21BHwEPE017238;
	Fri, 11 Feb 2022 17:58:14 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [RFC PATCH net-next v5 1/6] gtp: Allow to create GTP device without FDs
Date: Fri, 11 Feb 2022 18:55:00 +0100
Message-Id: <20220211175500.7805-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220211175405.7651-1-marcin.szycik@linux.intel.com>
References: <20220211175405.7651-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: RPT55Z7JNLN5LM7Q52I2C3IJ6XFYW5FU
X-Message-ID-Hash: RPT55Z7JNLN5LM7Q52I2C3IJ6XFYW5FU
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/RPT55Z7JNLN5LM7Q52I2C3IJ6XFYW5FU/>
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
IFLA_GTP_FD0 and IFLA_GTP_FD1 arguments. If the user sets
IFLA_GTP_CREATE_SOCKETS attribute, then GTP module takes care
of creating UDP sockets by itself. Sockets are created with the
commonly known UDP ports used for GTP protocol (GTP0_PORT and
GTP1U_PORT). In this case we don't have to provide encap_destroy
because no extra deinitialization is needed, everything is covered
by udp_tunnel_sock_release.

Note: GTP instance created with only this change applied, does
not handle GTP Echo Requests. This is implemented in the following
patch.

Besides that, small refactor was done, functions used in gtp_newlink
were moved above it. Handling of IFLA_GTP_ROLE attribute was moved
to gtp_newlink.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v4: use ntohs when creating UDP socket
v5: IFLA_GTP_CREATE_SOCKETS introduced, gtp_newlink refactor
---
 drivers/net/gtp.c            | 306 +++++++++++++++++++++--------------
 include/uapi/linux/if_link.h |   1 +
 2 files changed, 186 insertions(+), 121 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 24e5c54d06c1..29978c5e37e8 100644
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
@@ -645,8 +655,164 @@ static void gtp_link_setup(struct net_device *dev)
 	dev->needed_headroom	=3D LL_MAX_HEADER + max_gtp_header_len;
 }
=20
-static int gtp_hashtable_new(struct gtp_dev *gtp, int hsize);
-static int gtp_encap_enable(struct gtp_dev *gtp, struct nlattr *data[]);
+static int gtp_hashtable_new(struct gtp_dev *gtp, int hsize)
+{
+	int i;
+
+	gtp->addr_hash =3D kmalloc_array(hsize, sizeof(struct hlist_head),
+				       GFP_KERNEL | __GFP_NOWARN);
+	if (gtp->addr_hash =3D=3D NULL)
+		return -ENOMEM;
+
+	gtp->tid_hash =3D kmalloc_array(hsize, sizeof(struct hlist_head),
+				      GFP_KERNEL | __GFP_NOWARN);
+	if (gtp->tid_hash =3D=3D NULL)
+		goto err1;
+
+	gtp->hash_size =3D hsize;
+
+	for (i =3D 0; i < hsize; i++) {
+		INIT_HLIST_HEAD(&gtp->addr_hash[i]);
+		INIT_HLIST_HEAD(&gtp->tid_hash[i]);
+	}
+	return 0;
+err1:
+	kfree(gtp->addr_hash);
+	return -ENOMEM;
+}
+
+static struct sock *gtp_encap_enable_socket(int fd, int type,
+					    struct gtp_dev *gtp)
+{
+	struct udp_tunnel_sock_cfg tuncfg =3D {NULL};
+	struct socket *sock;
+	struct sock *sk;
+	int err;
+
+	pr_debug("enable gtp on %d, %d\n", fd, type);
+
+	sock =3D sockfd_lookup(fd, &err);
+	if (!sock) {
+		pr_debug("gtp socket fd=3D%d not found\n", fd);
+		return NULL;
+	}
+
+	sk =3D sock->sk;
+	if (sk->sk_protocol !=3D IPPROTO_UDP ||
+	    sk->sk_type !=3D SOCK_DGRAM ||
+	    (sk->sk_family !=3D AF_INET && sk->sk_family !=3D AF_INET6)) {
+		pr_debug("socket fd=3D%d not UDP\n", fd);
+		sk =3D ERR_PTR(-EINVAL);
+		goto out_sock;
+	}
+
+	lock_sock(sk);
+	if (sk->sk_user_data) {
+		sk =3D ERR_PTR(-EBUSY);
+		goto out_rel_sock;
+	}
+
+	sock_hold(sk);
+
+	tuncfg.sk_user_data =3D gtp;
+	tuncfg.encap_type =3D type;
+	tuncfg.encap_rcv =3D gtp_encap_recv;
+	tuncfg.encap_destroy =3D gtp_encap_destroy;
+
+	setup_udp_tunnel_sock(sock_net(sock->sk), sock, &tuncfg);
+
+out_rel_sock:
+	release_sock(sock->sk);
+out_sock:
+	sockfd_put(sock);
+	return sk;
+}
+
+static int gtp_encap_enable(struct gtp_dev *gtp, struct nlattr *data[])
+{
+	struct sock *sk1u =3D NULL;
+	struct sock *sk0 =3D NULL;
+
+	if (!data[IFLA_GTP_FD0] && !data[IFLA_GTP_FD1])
+		return -EINVAL;
+
+	if (data[IFLA_GTP_FD0]) {
+		u32 fd0 =3D nla_get_u32(data[IFLA_GTP_FD0]);
+
+		sk0 =3D gtp_encap_enable_socket(fd0, UDP_ENCAP_GTP0, gtp);
+		if (IS_ERR(sk0))
+			return PTR_ERR(sk0);
+	}
+
+	if (data[IFLA_GTP_FD1]) {
+		u32 fd1 =3D nla_get_u32(data[IFLA_GTP_FD1]);
+
+		sk1u =3D gtp_encap_enable_socket(fd1, UDP_ENCAP_GTP1U, gtp);
+		if (IS_ERR(sk1u)) {
+			gtp_encap_disable_sock(sk0);
+			return PTR_ERR(sk1u);
+		}
+	}
+
+	gtp->sk0 =3D sk0;
+	gtp->sk1u =3D sk1u;
+
+	return 0;
+}
+
+static struct sock *gtp_create_sock(int type, struct gtp_dev *gtp)
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
+		udp_conf.local_udp_port =3D htons(GTP0_PORT);
+	else if (type =3D=3D UDP_ENCAP_GTP1U)
+		udp_conf.local_udp_port =3D htons(GTP1U_PORT);
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
+static int gtp_create_sockets(struct gtp_dev *gtp, struct nlattr *data[]=
)
+{
+	struct sock *sk1u =3D NULL;
+	struct sock *sk0 =3D NULL;
+
+	sk0 =3D gtp_create_sock(UDP_ENCAP_GTP0, gtp);
+	if (IS_ERR(sk0))
+		return PTR_ERR(sk0);
+
+	sk1u =3D gtp_create_sock(UDP_ENCAP_GTP1U, gtp);
+	if (IS_ERR(sk1u)) {
+		udp_tunnel_sock_release(sk0->sk_socket);
+		return PTR_ERR(sk1u);
+	}
+
+	gtp->sk_created =3D true;
+	gtp->sk0 =3D sk0;
+	gtp->sk1u =3D sk1u;
+
+	return 0;
+}
=20
 static void gtp_destructor(struct net_device *dev)
 {
@@ -660,13 +826,11 @@ static int gtp_newlink(struct net *src_net, struct =
net_device *dev,
 		       struct nlattr *tb[], struct nlattr *data[],
 		       struct netlink_ext_ack *extack)
 {
+	unsigned int role =3D GTP_ROLE_GGSN;
 	struct gtp_dev *gtp;
 	struct gtp_net *gn;
 	int hashsize, err;
=20
-	if (!data[IFLA_GTP_FD0] && !data[IFLA_GTP_FD1])
-		return -EINVAL;
-
 	gtp =3D netdev_priv(dev);
=20
 	if (!data[IFLA_GTP_PDP_HASHSIZE]) {
@@ -677,11 +841,23 @@ static int gtp_newlink(struct net *src_net, struct =
net_device *dev,
 			hashsize =3D 1024;
 	}
=20
+	if (data[IFLA_GTP_ROLE]) {
+		role =3D nla_get_u32(data[IFLA_GTP_ROLE]);
+		if (role > GTP_ROLE_SGSN)
+			return -EINVAL;
+	}
+	gtp->role =3D role;
+
+	gtp->net =3D src_net;
+
 	err =3D gtp_hashtable_new(gtp, hashsize);
 	if (err < 0)
 		return err;
=20
-	err =3D gtp_encap_enable(gtp, data);
+	if (data[IFLA_GTP_CREATE_SOCKETS])
+		err =3D gtp_create_sockets(gtp, data);
+	else
+		err =3D gtp_encap_enable(gtp, data);
 	if (err < 0)
 		goto out_hashtable;
=20
@@ -726,6 +902,7 @@ static const struct nla_policy gtp_policy[IFLA_GTP_MA=
X + 1] =3D {
 	[IFLA_GTP_FD1]			=3D { .type =3D NLA_U32 },
 	[IFLA_GTP_PDP_HASHSIZE]		=3D { .type =3D NLA_U32 },
 	[IFLA_GTP_ROLE]			=3D { .type =3D NLA_U32 },
+	[IFLA_GTP_CREATE_SOCKETS]	=3D { .type =3D NLA_U8 },
 };
=20
 static int gtp_validate(struct nlattr *tb[], struct nlattr *data[],
@@ -771,119 +948,6 @@ static struct rtnl_link_ops gtp_link_ops __read_mos=
tly =3D {
 	.fill_info	=3D gtp_fill_info,
 };
=20
-static int gtp_hashtable_new(struct gtp_dev *gtp, int hsize)
-{
-	int i;
-
-	gtp->addr_hash =3D kmalloc_array(hsize, sizeof(struct hlist_head),
-				       GFP_KERNEL | __GFP_NOWARN);
-	if (gtp->addr_hash =3D=3D NULL)
-		return -ENOMEM;
-
-	gtp->tid_hash =3D kmalloc_array(hsize, sizeof(struct hlist_head),
-				      GFP_KERNEL | __GFP_NOWARN);
-	if (gtp->tid_hash =3D=3D NULL)
-		goto err1;
-
-	gtp->hash_size =3D hsize;
-
-	for (i =3D 0; i < hsize; i++) {
-		INIT_HLIST_HEAD(&gtp->addr_hash[i]);
-		INIT_HLIST_HEAD(&gtp->tid_hash[i]);
-	}
-	return 0;
-err1:
-	kfree(gtp->addr_hash);
-	return -ENOMEM;
-}
-
-static struct sock *gtp_encap_enable_socket(int fd, int type,
-					    struct gtp_dev *gtp)
-{
-	struct udp_tunnel_sock_cfg tuncfg =3D {NULL};
-	struct socket *sock;
-	struct sock *sk;
-	int err;
-
-	pr_debug("enable gtp on %d, %d\n", fd, type);
-
-	sock =3D sockfd_lookup(fd, &err);
-	if (!sock) {
-		pr_debug("gtp socket fd=3D%d not found\n", fd);
-		return NULL;
-	}
-
-	sk =3D sock->sk;
-	if (sk->sk_protocol !=3D IPPROTO_UDP ||
-	    sk->sk_type !=3D SOCK_DGRAM ||
-	    (sk->sk_family !=3D AF_INET && sk->sk_family !=3D AF_INET6)) {
-		pr_debug("socket fd=3D%d not UDP\n", fd);
-		sk =3D ERR_PTR(-EINVAL);
-		goto out_sock;
-	}
-
-	lock_sock(sk);
-	if (sk->sk_user_data) {
-		sk =3D ERR_PTR(-EBUSY);
-		goto out_rel_sock;
-	}
-
-	sock_hold(sk);
-
-	tuncfg.sk_user_data =3D gtp;
-	tuncfg.encap_type =3D type;
-	tuncfg.encap_rcv =3D gtp_encap_recv;
-	tuncfg.encap_destroy =3D gtp_encap_destroy;
-
-	setup_udp_tunnel_sock(sock_net(sock->sk), sock, &tuncfg);
-
-out_rel_sock:
-	release_sock(sock->sk);
-out_sock:
-	sockfd_put(sock);
-	return sk;
-}
-
-static int gtp_encap_enable(struct gtp_dev *gtp, struct nlattr *data[])
-{
-	struct sock *sk1u =3D NULL;
-	struct sock *sk0 =3D NULL;
-	unsigned int role =3D GTP_ROLE_GGSN;
-
-	if (data[IFLA_GTP_FD0]) {
-		u32 fd0 =3D nla_get_u32(data[IFLA_GTP_FD0]);
-
-		sk0 =3D gtp_encap_enable_socket(fd0, UDP_ENCAP_GTP0, gtp);
-		if (IS_ERR(sk0))
-			return PTR_ERR(sk0);
-	}
-
-	if (data[IFLA_GTP_FD1]) {
-		u32 fd1 =3D nla_get_u32(data[IFLA_GTP_FD1]);
-
-		sk1u =3D gtp_encap_enable_socket(fd1, UDP_ENCAP_GTP1U, gtp);
-		if (IS_ERR(sk1u)) {
-			gtp_encap_disable_sock(sk0);
-			return PTR_ERR(sk1u);
-		}
-	}
-
-	if (data[IFLA_GTP_ROLE]) {
-		role =3D nla_get_u32(data[IFLA_GTP_ROLE]);
-		if (role > GTP_ROLE_SGSN) {
-			gtp_encap_disable_sock(sk0);
-			gtp_encap_disable_sock(sk1u);
-			return -EINVAL;
-		}
-	}
-
-	gtp->sk0 =3D sk0;
-	gtp->sk1u =3D sk1u;
-	gtp->role =3D role;
-
-	return 0;
-}
-
 static struct gtp_dev *gtp_find_dev(struct net *src_net, struct nlattr *=
nla[])
 {
 	struct gtp_dev *gtp =3D NULL;
diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index 6218f93f5c1a..42f3fb097271 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -822,6 +822,7 @@ enum {
 	IFLA_GTP_FD1,
 	IFLA_GTP_PDP_HASHSIZE,
 	IFLA_GTP_ROLE,
+	IFLA_GTP_CREATE_SOCKETS,
 	__IFLA_GTP_MAX,
 };
 #define IFLA_GTP_MAX (__IFLA_GTP_MAX - 1)
--=20
2.31.1

