Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 2A1A32FB510
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 19 Jan 2021 10:55:07 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id D09041B42C2;
	Tue, 19 Jan 2021 09:54:54 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=fail (p=none dis=none) header.from=canonical.com
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 1027 seconds by postgrey-1.37 at lists.osmocom.org;
 Mon, 18 Jan 2021 12:15:12 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=fail (p=none dis=none) header.from=canonical.com
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=91.189.89.112;
 helo=youngberry.canonical.com; envelope-from=colin.king@canonical.com;
 receiver=<UNKNOWN> 
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by lists.osmocom.org (Postfix) with ESMTP id 4EF9A1ADDB1
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Jan 2021 12:15:04 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212])
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1l1TAY-0005Tt-2T; Mon, 18 Jan 2021 11:58:02 +0000
To: Pravin B Shelar <pbshelar@fb.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>,
 Harald Welte <laforge@gnumonks.org>, osmocom-net-gprs@lists.osmocom.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>
From: Colin Ian King <colin.king@canonical.com>
Subject: re: GTP: add support for flow based tunneling API
Message-ID: <de39dc1a-546b-d5a5-d9fc-de50e12fb74a@canonical.com>
Date: Mon, 18 Jan 2021 11:58:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 19 Jan 2021 09:54:50 +0000
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.34
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
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Hi,

Static analysis of today's linux-next using Coverity has found a
potential memory leak issue in the following commit:

commit 9ab7e76aefc97a9aa664accb59d6e8dc5e52514a
Author: Pravin B Shelar <pbshelar@fb.com>
Date:   Sat Jan 9 23:00:21 2021 -0800

    GTP: add support for flow based tunneling API

The analysis is as follows:

186 static int gtp_set_tun_dst(struct gtp_dev *gtp, struct sk_buff *skb,
187                           unsigned int hdrlen, u8 gtp_version,
188                           __be64 tid, u8 flags)
189 {
190        struct metadata_dst *tun_dst;
191        int opts_len = 0;
192

   1. Condition !!(flags & 7), taking true branch.
   2. Condition !!(flags & 7), taking true branch.

193        if (unlikely(flags & GTP1_F_MASK))
194                opts_len = sizeof(struct gtpu_metadata);
195

   3. alloc_fn: Storage is returned from allocation function udp_tun_rx_dst.
   4. var_assign: Assigning: tun_dst = storage returned from
udp_tun_rx_dst(skb, gtp->sk1u->__sk_common.skc_family, 1024, tid, opts_len).

196        tun_dst = udp_tun_rx_dst(skb, gtp->sk1u->sk_family,
TUNNEL_KEY, tid, opts_len);

   5. Condition !tun_dst, taking false branch.

197        if (!tun_dst) {
198                netdev_dbg(gtp->dev, "Failed to allocate tun_dst");
199                goto err;
200        }
201

   6. Condition 0 /* __builtin_types_compatible_p() */, taking false branch.
   7. Condition 1 /* __builtin_types_compatible_p() */, taking true branch.
   8. Falling through to end of if statement.
   9. Condition !!branch, taking false branch.
   10. Condition ({...; !!branch;}), taking false branch.

202        netdev_dbg(gtp->dev, "attaching metadata_dst to skb, gtp ver
%d hdrlen %d\n",
203                   gtp_version, hdrlen);

   11. Condition !!opts_len, taking true branch.
   12. Condition !!opts_len, taking true branch.

204        if (unlikely(opts_len)) {
205                struct gtpu_metadata *opts;
206                struct gtp1_header *gtp1;
207
208                opts = ip_tunnel_info_opts(&tun_dst->u.tun_info);
209                gtp1 = (struct gtp1_header *)(skb->data +
sizeof(struct udphdr));
210                opts->ver = GTP_METADATA_V1;
211                opts->flags = gtp1->flags;
212                opts->type = gtp1->type;

   13. Condition 0 /* __builtin_types_compatible_p() */, taking false
branch.
   14. Condition 1 /* __builtin_types_compatible_p() */, taking true branch.
   15. Falling through to end of if statement.
   16. Condition !!branch, taking false branch.
   17. Condition ({...; !!branch;}), taking false branch.

213                netdev_dbg(gtp->dev, "recved control pkt: flag %x
type: %d\n",
214                           opts->flags, opts->type);
215                tun_dst->u.tun_info.key.tun_flags |= TUNNEL_GTPU_OPT;
216                tun_dst->u.tun_info.options_len = opts_len;
217                skb->protocol = htons(0xffff);         /* Unknown */
218        }
219        /* Get rid of the GTP + UDP headers. */

   18. Condition !net_eq(sock_net(gtp->sk1u), dev_net(gtp->dev)), taking
false branch.
   19. Condition !net_eq(sock_net(gtp->sk1u), dev_net(gtp->dev)), taking
false branch.
   20. Condition iptunnel_pull_header(skb, hdrlen, skb->protocol,
!net_eq(sock_net(gtp->sk1u), dev_net(gtp->dev))), taking true branch.

220        if (iptunnel_pull_header(skb, hdrlen, skb->protocol,
221                                 !net_eq(sock_net(gtp->sk1u),
dev_net(gtp->dev)))) {
222                gtp->dev->stats.rx_length_errors++;

   21. Jumping to label err.

223                goto err;
224        }
225
226        skb_dst_set(skb, &tun_dst->dst);
227        return 0;
228 err:

   Resource leak (RESOURCE_LEAK)
   22. leaked_storage: Variable tun_dst going out of scope leaks the
storage it points to.

229        return -1;
230 }

The goto on line 223 is leaking tun_dst.  From what I can see, I believe
a call to kfree(tun_dst) before the goto on line 223 looks like a
pertinent fix, but I'm not 100% sure, so I'm flagging this up as an
issue that need further investigation by folk who are more familiar with
this code.

Colin
