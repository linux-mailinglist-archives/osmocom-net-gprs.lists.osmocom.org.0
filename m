Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id EE3C411A5D1
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 11 Dec 2019 09:26:16 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 786F1CCBA7;
	Wed, 11 Dec 2019 08:25:32 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=f1MfkL0D
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1042; helo=mail-pj1-x1042.google.com;
 envelope-from=ap420073@gmail.com; receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com
 [IPv6:2607:f8b0:4864:20::1042])
 by lists.osmocom.org (Postfix) with ESMTP id EFC2CCCB28
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 11 Dec 2019 08:23:43 +0000 (UTC)
Received: by mail-pj1-x1042.google.com with SMTP id r67so8648816pjb.0
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 11 Dec 2019 00:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=iAl6Wgg5JJEDTaBV/ZiMeNUVZiclw1haj3Vo8EN4cFg=;
 b=f1MfkL0DhkWZzpXbyC3R0r3hMGlNdZ5EnGdT2tO02W8NWDL4OR/Q8ifhPHjIJfwIhc
 wst5WqYfTKuV6rEOszlldriI1mkOeEt+2kuWnkPMxBOttDWn1F6XeNyySFeg+UYtLlur
 XafttwKUX0pXahdimU/TAqaGpR39S1aVm3O1E6vBGFABCRRlqD/eREoxvrHzJTMczQJc
 xsXmjUGMiPQj4DHvt3HL8JRWWt9IF5k8G28lKwKGMJ3xXi9GZOW36r9zL1cNdNdZwXKf
 B+Abp6dGSm9h+zUYLcz8maLi6sJj3Jty72k1Cw+XCREm0Q0Xl8e26mCukvp3VI/ivnWi
 7zjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iAl6Wgg5JJEDTaBV/ZiMeNUVZiclw1haj3Vo8EN4cFg=;
 b=EqoZYKNQqolAhHMsyn6O/F2+VHVdDKfesG6S3LI4LdqFUprgPW6KsolVAxT/SLqYKx
 D+hlnZF6NEeANjvFR+YPTNZeDPDe+gRyYVfsDPGc/NdZ69SWRFI1r0zuMvH6roBgdspR
 HeBaRg8DcdTEMxxfHOpsAi+K0pjHduubigNQo+VNshC53Tm2tA8wrUpVnM3yA1bnzjNc
 psZXulVjxUo7eZCosz9goGs+UhO61utcQwtWTmB4EevkL3tvv/lPh+4b7HRvHnme4w53
 1Ux19NGp9XnqJnItMRZ1UmrgKV2CQcLDaLJrhD82tAh71OC//ojHNfDdjw+MovKHnGRP
 iLpQ==
X-Gm-Message-State: APjAAAVH6wdItcLFO5w/0myUWfck4gnxnwLnmYpS9Atf6tAP6AvcK2Xr
 q5xGFSB5dVR/iwJmae1Idk8=
X-Google-Smtp-Source: APXvYqy7u3lQkyMou1mjjyp+thNVZlogXXZqZY/QZQeD3RbGJ2pVUfc5nBPW4jcW9mF57fwcDNLwug==
X-Received: by 2002:a17:902:8306:: with SMTP id
 bd6mr1940814plb.303.1576052622519; 
 Wed, 11 Dec 2019 00:23:42 -0800 (PST)
Received: from localhost.localdomain ([110.35.161.54])
 by smtp.gmail.com with ESMTPSA id 83sm1746988pgh.12.2019.12.11.00.23.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 00:23:41 -0800 (PST)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, pablo@netfilter.org, laforge@gnumonks.org,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org
Subject: [PATCH net 3/4] gtp: fix an use-after-free in ipv4_pdp_find()
Date: Wed, 11 Dec 2019 08:23:34 +0000
Message-Id: <20191211082334.28688-1-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
List-Unsubscribe: <https://lists.osmocom.org/mailman/options/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=unsubscribe>
List-Archive: <http://lists.osmocom.org/pipermail/osmocom-net-gprs/>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Subscribe: <https://lists.osmocom.org/mailman/listinfo/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=subscribe>
Cc: ap420073@gmail.com
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

ipv4_pdp_find() is called in TX packet path of GTP.
ipv4_pdp_find() internally uses gtp->tid_hash to lookup pdp context.
In the current code, gtp->tid_hash and gtp->addr_hash are freed by
->dellink(), which is gtp_dellink().
But gtp_dellink() would be called while packets are processing.
So, gtp_dellink() should not free gtp->tid_hash and gtp->addr_hash.
Instead, dev->priv_destructor() would be used because this callback
is called after all packet processing safely.

Test commands:
    ip link add veth1 type veth peer name veth2
    ip a a 172.0.0.1/24 dev veth1
    ip link set veth1 up
    ip a a 172.99.0.1/32 dev lo

    gtp-link add gtp1 &

    gtp-tunnel add gtp1 v1 200 100 172.99.0.2 172.0.0.2
    ip r a  172.99.0.2/32 dev gtp1
    ip link set gtp1 mtu 1500

    ip netns add ns2
    ip link set veth2 netns ns2
    ip netns exec ns2 ip a a 172.0.0.2/24 dev veth2
    ip netns exec ns2 ip link set veth2 up
    ip netns exec ns2 ip a a 172.99.0.2/32 dev lo
    ip netns exec ns2 ip link set lo up

    ip netns exec ns2 gtp-link add gtp2 &
    ip netns exec ns2 gtp-tunnel add gtp2 v1 100 200 172.99.0.1 172.0.0.1
    ip netns exec ns2 ip r a 172.99.0.1/32 dev gtp2
    ip netns exec ns2 ip link set gtp2 mtu 1500

    hping3 172.99.0.2 -2 --flood &
    ip link del gtp1

Splat looks like:
[   72.568081][ T1195] BUG: KASAN: use-after-free in ipv4_pdp_find.isra.12+0x130/0x170 [gtp]
[   72.568916][ T1195] Read of size 8 at addr ffff8880b9a35d28 by task hping3/1195
[   72.569631][ T1195]
[   72.569861][ T1195] CPU: 2 PID: 1195 Comm: hping3 Not tainted 5.5.0-rc1 #199
[   72.570547][ T1195] Hardware name: innotek GmbH VirtualBox/VirtualBox, BIOS VirtualBox 12/01/2006
[   72.571438][ T1195] Call Trace:
[   72.571764][ T1195]  dump_stack+0x96/0xdb
[   72.572171][ T1195]  ? ipv4_pdp_find.isra.12+0x130/0x170 [gtp]
[   72.572761][ T1195]  print_address_description.constprop.5+0x1be/0x360
[   72.573400][ T1195]  ? ipv4_pdp_find.isra.12+0x130/0x170 [gtp]
[   72.573971][ T1195]  ? ipv4_pdp_find.isra.12+0x130/0x170 [gtp]
[   72.574544][ T1195]  __kasan_report+0x12a/0x16f
[   72.575014][ T1195]  ? ipv4_pdp_find.isra.12+0x130/0x170 [gtp]
[   72.575593][ T1195]  kasan_report+0xe/0x20
[   72.576004][ T1195]  ipv4_pdp_find.isra.12+0x130/0x170 [gtp]
[   72.576577][ T1195]  gtp_build_skb_ip4+0x199/0x1420 [gtp]
[ ... ]
[   72.647671][ T1195] BUG: unable to handle page fault for address: ffff8880b9a35d28
[   72.648512][ T1195] #PF: supervisor read access in kernel mode
[   72.649158][ T1195] #PF: error_code(0x0000) - not-present page
[   72.649849][ T1195] PGD a6c01067 P4D a6c01067 PUD 11fb07067 PMD 11f939067 PTE 800fffff465ca060
[   72.652958][ T1195] Oops: 0000 [#1] SMP DEBUG_PAGEALLOC KASAN PTI
[   72.653834][ T1195] CPU: 2 PID: 1195 Comm: hping3 Tainted: G    B             5.5.0-rc1 #199
[   72.668062][ T1195] RIP: 0010:ipv4_pdp_find.isra.12+0x86/0x170 [gtp]
[ ... ]
[   72.679168][ T1195] Call Trace:
[   72.679603][ T1195]  gtp_build_skb_ip4+0x199/0x1420 [gtp]
[   72.681915][ T1195]  ? ipv4_pdp_find.isra.12+0x170/0x170 [gtp]
[   72.682513][ T1195]  ? lock_acquire+0x164/0x3b0
[   72.682966][ T1195]  ? gtp_dev_xmit+0x35e/0x890 [gtp]
[   72.683481][ T1195]  gtp_dev_xmit+0x3c2/0x890 [gtp]
[ ... ]

Fixes: 459aa660eb1d ("gtp: add initial driver for datapath of GPRS Tunneling Protocol (GTP-U)")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/gtp.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index a010e0a11c33..5450b1099c6d 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -640,9 +640,16 @@ static void gtp_link_setup(struct net_device *dev)
 }
 
 static int gtp_hashtable_new(struct gtp_dev *gtp, int hsize);
-static void gtp_hashtable_free(struct gtp_dev *gtp);
 static int gtp_encap_enable(struct gtp_dev *gtp, struct nlattr *data[]);
 
+static void gtp_destructor(struct net_device *dev)
+{
+	struct gtp_dev *gtp = netdev_priv(dev);
+
+	kfree(gtp->addr_hash);
+	kfree(gtp->tid_hash);
+}
+
 static int gtp_newlink(struct net *src_net, struct net_device *dev,
 		       struct nlattr *tb[], struct nlattr *data[],
 		       struct netlink_ext_ack *extack)
@@ -677,13 +684,15 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 
 	gn = net_generic(dev_net(dev), gtp_net_id);
 	list_add_rcu(&gtp->list, &gn->gtp_dev_list);
+	dev->priv_destructor = gtp_destructor;
 
 	netdev_dbg(dev, "registered new GTP interface\n");
 
 	return 0;
 
 out_hashtable:
-	gtp_hashtable_free(gtp);
+	kfree(gtp->addr_hash);
+	kfree(gtp->tid_hash);
 out_encap:
 	gtp_encap_disable(gtp);
 	return err;
@@ -692,8 +701,13 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 static void gtp_dellink(struct net_device *dev, struct list_head *head)
 {
 	struct gtp_dev *gtp = netdev_priv(dev);
+	struct pdp_ctx *pctx;
+	int i;
+
+	for (i = 0; i < gtp->hash_size; i++)
+		hlist_for_each_entry_rcu(pctx, &gtp->tid_hash[i], hlist_tid)
+			pdp_context_delete(pctx);
 
-	gtp_hashtable_free(gtp);
 	list_del_rcu(&gtp->list);
 	unregister_netdevice_queue(dev, head);
 }
@@ -771,20 +785,6 @@ static int gtp_hashtable_new(struct gtp_dev *gtp, int hsize)
 	return -ENOMEM;
 }
 
-static void gtp_hashtable_free(struct gtp_dev *gtp)
-{
-	struct pdp_ctx *pctx;
-	int i;
-
-	for (i = 0; i < gtp->hash_size; i++)
-		hlist_for_each_entry_rcu(pctx, &gtp->tid_hash[i], hlist_tid)
-			pdp_context_delete(pctx);
-
-	synchronize_rcu();
-	kfree(gtp->addr_hash);
-	kfree(gtp->tid_hash);
-}
-
 static struct sock *gtp_encap_enable_socket(int fd, int type,
 					    struct gtp_dev *gtp)
 {
-- 
2.17.1

