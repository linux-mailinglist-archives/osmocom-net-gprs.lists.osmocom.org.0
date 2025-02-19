Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2C0A43499
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:18 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E41CD1F3C7D;
	Tue, 25 Feb 2025 05:36:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MgwB8xKpxo1C; Tue, 25 Feb 2025 05:36:17 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id EDD341F3BFF;
	Tue, 25 Feb 2025 05:36:13 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 7520E38A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:17 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 5D4351ED30A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qMBTOtA9mrdT for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Feb 2025 12:52:16 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by mail.osmocom.org (Postfix) with ESMTPS id AF8E11ED302
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:16 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-220f4dd756eso93415025ad.3
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 04:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739969535; x=1740574335; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PyZ7Oa5HQm/CyDGlUAOCpKikT+Z0UZAcxIZ482ECX9g=;
        b=hmj6VORQR2sWeEQFd3fmpy+yNYfL90AHfVJoivHRZNrgUI4shrIF9pY0HIuRZDMmAV
         1Ej7QUbmOiUrghD8Mmf1IBPsK7idYEr/wH2QUVoId05nlhr9Ij8ArH+mf8GxvR0/0Qyq
         BWL+VcZIqqEtgdD/xAf5G3paWJjKTpDWxGYFlmshBmRAoG+dKrxU4x1q/gR+CNRvf/EI
         NUnQNRIvvhdrmAo/ZwRUBi4QAzZXpUvhV9ydlntrWxuo3qeePmp56aY+CdCLnMBnHn92
         juzo59td3BjGoIGUqjpBwIVjSsx26LCPPMT6eL9htG+Ddl/F2j3rLvxFZXt/TWrM0UD3
         fALA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969535; x=1740574335;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PyZ7Oa5HQm/CyDGlUAOCpKikT+Z0UZAcxIZ482ECX9g=;
        b=Nz0HcapTQv8jaghRYFfCzmcpebbTOa2XXXAdrxNA1/4ZodEsh0/4QjHUtBXWYMMInJ
         INg23W6OPz3/lidQl5CBsVPFl8zIc68dK6K7blYL/vt+ZJxU2ZSTOgIth56aGSzrjlSa
         5AtylSp0eGCUjnONK3BbMVDkgEfzYOIR3DKy2E/Q7Hb3gTVrAJN6FRxWW8Q9PwuqyVfx
         s6HdAK341CTMsf9P+gphTxa4AQQRo+7tIlog7P5d3IBIS+pLzW9qgJEQQs/rBKzhXINB
         adn+r747l/MZ2KK2Nu6ifd97VZIju2loBPfhiWMc0w2TcT0wfNGCkb8KUj2F3gNlXpQG
         5Vhg==
X-Forwarded-Encrypted: i=1; AJvYcCWsuK675o4ph3xBfFQSv3yRo3r/3uAsHXS5dr4IYwdYPloydK3/yo51E01z7otao+R7OVsKNYddV/dGA9NfNJSN@lists.osmocom.org
X-Gm-Message-State: AOJu0YwRkhEm9+bdCAvVafO/hAv/OFAn/tioqblQU+pJc7f4teTwPfTQ
	1xd/A7MLJKiQ/VspWikiP5lrLmZbhRtBHYBPTmQHuiSe/LvjP9YG
X-Gm-Gg: ASbGncsKtzBBX10f3S6GQj27Tdr8Slw5czL4hRDRMYH0plSGTboyvCIK78uVOKWjgez
	GtzG7EVKiRZv++V3w5kxQV4wO/ckohF8bI8h0rSjmWQOEaeWyK+dqEzMm9dlMK+xsD0ajXP5IRI
	FSDa9QLOI7gAnMl8xLcIsYKIWfGNu5FS+kFx8qXCCbfSuhW5hCZP04xAYiuu/sDYI/PKNw/SAvN
	WD3nEP1at9j5+taP03KkwYXH8pmlCdjXSRyCKsa0F4hWlPseYiw5uVEPWJ5DabsdNPzRozwyT2S
	oVFGhg==
X-Google-Smtp-Source: AGHT+IGEFP67zSY2isKHwZ8c/HiTSEQrpqN9J90h0hy0pUrJ6TwQBaUnsvMftR+A8p8DsBy8+Vg8gQ==
X-Received: by 2002:a17:902:d502:b0:21f:dc3:890e with SMTP id d9443c01a7336-221040255fcmr244598235ad.18.1739969534802;
        Wed, 19 Feb 2025 04:52:14 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536436fsm103427175ad.64.2025.02.19.04.52.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:52:14 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v10 09/13] net: xfrm: Use link netns in newlink() of rtnl_link_ops
Date: Wed, 19 Feb 2025 20:50:35 +0800
Message-ID: <20250219125039.18024-10-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BUFQYZBXCUHWNZ57UIRQWZDJLZ2UA5TM
X-Message-ID-Hash: BUFQYZBXCUHWNZ57UIRQWZDJLZ2UA5TM
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:36:06 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/BUFQYZBXCUHWNZ57UIRQWZDJLZ2UA5TM/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

When link_net is set, use it as link netns instead of dev_net(). This
prepares for rtnetlink core to create device in target netns directly,
in which case the two namespaces may be different.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 net/xfrm/xfrm_interface_core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/xfrm/xfrm_interface_core.c b/net/xfrm/xfrm_interface_cor=
e.c
index 5659a6cadd51..622445f041d3 100644
--- a/net/xfrm/xfrm_interface_core.c
+++ b/net/xfrm/xfrm_interface_core.c
@@ -242,10 +242,9 @@ static void xfrmi_dev_free(struct net_device *dev)
 	gro_cells_destroy(&xi->gro_cells);
 }
=20
-static int xfrmi_create(struct net_device *dev)
+static int xfrmi_create(struct net *net, struct net_device *dev)
 {
 	struct xfrm_if *xi =3D netdev_priv(dev);
-	struct net *net =3D dev_net(dev);
 	struct xfrmi_net *xfrmn =3D net_generic(net, xfrmi_net_id);
 	int err;
=20
@@ -819,11 +818,12 @@ static int xfrmi_newlink(struct net_device *dev,
 			 struct netlink_ext_ack *extack)
 {
 	struct nlattr **data =3D params->data;
-	struct net *net =3D dev_net(dev);
 	struct xfrm_if_parms p =3D {};
 	struct xfrm_if *xi;
+	struct net *net;
 	int err;
=20
+	net =3D params->link_net ? : dev_net(dev);
 	xfrmi_netlink_parms(data, &p);
 	if (p.collect_md) {
 		struct xfrmi_net *xfrmn =3D net_generic(net, xfrmi_net_id);
@@ -852,7 +852,7 @@ static int xfrmi_newlink(struct net_device *dev,
 	xi->net =3D net;
 	xi->dev =3D dev;
=20
-	err =3D xfrmi_create(dev);
+	err =3D xfrmi_create(net, dev);
 	return err;
 }
=20
--=20
2.48.1

