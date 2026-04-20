Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPXiIVB48GmiTwEAu9opvQ
	(envelope-from <osmocom-net-gprs-bounces@lists.osmocom.org>)
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:20 +0200
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 268A9480DF3
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:19 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 93E2550DA55;
	Tue, 28 Apr 2026 09:05:19 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HOPWjKMtlazd; Tue, 28 Apr 2026 09:05:18 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A5CB850DA2A;
	Tue, 28 Apr 2026 09:05:10 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org
 [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D7F8238A017E
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 19:44:52 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B5AB64F6C12
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 19:44:52 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HZQJ56FE3tfh for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 19:44:52 +0000 (UTC)
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com
 [IPv6:2607:f8b0:4864:20::c2b])
	by mail.osmocom.org (Postfix) with ESMTPS id 0ADFB4F6C0D
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 19:44:51 +0000 (UTC)
Received: by mail-oo1-xc2b.google.com with SMTP id
 006d021491bc7-69485d0e4beso471752eaf.3
        for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 12:44:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776714290; cv=none;
        d=google.com; s=arc-20240605;
        b=ffY+dium5biYerMr48pydp45F97dt1h5RWotWgwYEcbQZcGNmZIFrBsjxTSKXuqXd6
         7sS5IIFDt96kq8j/QICQsX4WdGc4poLj1dScr6F7ug0ex9OO6ZLBBOxdiZ74U5zhUCQt
         CKqb/Qu25dCYv9ahqFDGpb9Pxgt8hF2/WENAknduferSF/LSS8ldCuz8dOyh5Rdmt6es
         ugt5hhQK9Udu3PgJilZqwrllVTR0y7fpROJq+AVdHRoGD+ZimHyM25k20uC3RMRPu110
         iNyzmVuzizTLb48vkM4AFPVv3PhgUuuhq1zUqR6DGprq+4gghWFlCb6vvLyWiwLBUf9P
         V94g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NrFBEd5Hxd3znL27N+M0coP9GIoEE8kuB1MrCyY7TmE=;
        fh=/e8Gh5uorvkKh5Uz+0DlKcoBFa874c/c68X2CIrxxw0=;
        b=axpqX6HJ22ssWiPNlh8t8enQKf6GjfXQSa84bzuURP7jghkQ2doa/9CGPjgU9kNjqR
         OpHdXE/kjiIUxpDiLaFLJXhjtVHrWCztrt1XbwbKAd+UDpywDqPfv8450u6Thu3gxc0t
         mYAyI3P62lMaHXe1bXwjPkGvBsmcqM0M54ilM4mq6XqjAcy7ANSxVITAknnmumCQJoCQ
         cKoXiLZfGBEMmMsVkCkhA6wUDb9hKx59g9l6ggnWTIi/CXSZWtc1dT0Cg86lFxO+u7Fa
         WiQXmDy6QFg3FYhPVgO05Zfu8J7LWA5fY4k6+qNq9x2YO1GlYg5aUEWn7gDwv2mzklcU
         fXPg==;
        darn=lists.osmocom.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776714290; x=1777319090;
 darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NrFBEd5Hxd3znL27N+M0coP9GIoEE8kuB1MrCyY7TmE=;
        b=bL4GtadSZxKrnkSkyV+uPWntvaCva9kh3q0bC4ky/221bv/Ko+bjrMFQzmfw6Bfu7Z
         9LvdHwiCcHjPuA/FngiJWhDw8cTBeyRIpZPWHHbG71r6kEdKWSwf5H+IhxnoaW1oC3DM
         EpwiCh3PCbpFot1fCelRHwTFHRsp+nqILk6TaBgIRO2cEaUtOtW8P0Zs0HNNry2jU6DS
         QTXf1SGxsjwTQ3JXfYOHs77Vm6AzUUPyjsOgBPuVCh8DktMh5JqDlYLvFf3CfLWCNFGT
         mH3aaoFp+xGnQGe9V56Uug7b7e2kLl7+SJekp7wAUpNTWjxRfv4vgkGl1TnDNDAA4zdn
         Iryw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776714290; x=1777319090;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NrFBEd5Hxd3znL27N+M0coP9GIoEE8kuB1MrCyY7TmE=;
        b=GW3HGCbPetztrn6MsLPz2cuzqiIty2eUNQ2MN4MP5qE9VvxpsHDUctY4MKIQF5L/Rw
         lmuaq2NvEVdPbuhAQUJpqQVrvN5urCZme/zCM8grXDMaxVUIbFOLhbQpTlgrlK2VJbUi
         KsX+F4q3BCVXCxP5O57aPtspRd2aVcx9vF4mWJeQ9OM+iL7uTy/e7Yn3zNE1sUU6RrWp
         TRPlrF4rLpFZ1xdSh4J6fZiuGfmmbnWTzpOYn/6e/FkUjjVVEb4gQ2xjLgRlIe4IwgSc
         j8p7n78xpFgy69SwIY4kg1Zz2I7RG3kGqWDT6kuz14bhQb0BBJDVmq/E0t68+go/m26m
         5+oQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8vAAL6ffXoJ3KdNL0eA7Hk16akPYyidjPWChQYsZ5yQJLyWUvBOU1QLuOI+6/ecWBhRQVQKw1meF6Qa5D+ak+3@lists.osmocom.org
X-Gm-Message-State: AOJu0YxG++s2Nclmz8j9b8XberS3P1R/1tvK65Ny4jsKYL7ouQT5hCOB
	+etm/D7l+QBxgy4yjqQaqlQFDRnwiNr17tpds/hmukiuzLYu+NswuCLyR+MWobdm7OPIQVGVT9P
	yuz0wJsvvfwQkzrHaN8N009vauh9aRIY=
X-Gm-Gg: AeBDiesOacS4H7b9IoHjEaEJuEmMKaUJjm4aJqtWO6jSH5ptwLJU96mUgMUr1hvHWSM
	Zvz6CtcxpMkIDpdP5RzMN//mgACNpS1yZr7MtuYAI3qhHBYlTGzatWHANKBqSSi2jNBkC3sA7fa
	EZtmHAOAJclGBwByKyaxIinUAk9gGutiWdT2letueS/bWHOAXhAkpIeOZCXI0gRAf5q2kWFfJor
	BSISqjxMxtpYnAbx+KYyWNxngta0UKOM6zfjYV4oRLqOSpwtvn9T02vFJIrobMwg8ILiT1oaHKg
	pd6Zfhc2uGi7pG435svZJoTTnCj5DRZcrwrtzhfuNpa0ufwE
X-Received: by 2002:a05:6820:82a:b0:67b:f1c8:ede1 with SMTP id
 006d021491bc7-69462f44064mr9004785eaf.53.1776714290182; Mon, 20 Apr 2026
 12:44:50 -0700 (PDT)
MIME-Version: 1.0
References: <20260417055408.4667-1-devnexen@gmail.com>
 <b44de581-9f41-4804-afb1-72c491d9443a@gmail.com>
In-Reply-To: <b44de581-9f41-4804-afb1-72c491d9443a@gmail.com>
From: David CARLIER <devnexen@gmail.com>
Date: Mon, 20 Apr 2026 20:44:39 +0100
X-Gm-Features: AQROBzBSluoIh10jRt0_98McgNJVoNK2fLZ7HLdTtSL5hz3I43x5DeSAEDkEuRw
Message-ID: 
 <CA+XhMqyN_fFptjA=8YJtXzyStQZ68xJiNSG464o4R-dQFLHt7w@mail.gmail.com>
Subject: Re: [PATCH] gtp: disable BH before calling udp_tunnel_xmit_skb()
To: Justin Iurman <justin.iurman@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: devnexen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation
Message-ID-Hash: VJYKRMBUOPEWZNP757I3O55JRLES2ZTK
X-Message-ID-Hash: VJYKRMBUOPEWZNP757I3O55JRLES2ZTK
X-Mailman-Approved-At: Tue, 28 Apr 2026 09:05:02 +0000
CC: Pablo Neira Ayuso <pablo@netfilter.org>,
 Harald Welte <laforge@gnumonks.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Weiming Shi <bestswngs@gmail.com>,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/VJYKRMBUOPEWZNP757I3O55JRLES2ZTK/>
List-Archive: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>
X-Rspamd-Queue-Id: 268A9480DF3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[181];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+a:ganesha.gnumonks.org:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:justin.iurman@gmail.com,m:pablo@netfilter.org,m:laforge@gnumonks.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bestswngs@gmail.com,m:osmocom-net-gprs@lists.osmocom.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:justiniurman@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[devnexen@gmail.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,mail.osmocom.org:helo,mail.osmocom.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	FROM_NEQ_ENVFROM(0.00)[devnexen@gmail.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[netfilter.org,gnumonks.org,lunn.ch,google.com,kernel.org,redhat.com,gmail.com,lists.osmocom.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.096];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:12337, ipnet:2001:780::/32, country:DE];
	TAGGED_RCPT(0.00)[osmocom-net-gprs,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]

Hi Julian,

On Mon, 20 Apr 2026 at 20:02, Justin Iurman <justin.iurman@gmail.com> wrote=
:
>
> On 4/17/26 07:54, David Carlier wrote:
> > gtp_genl_send_echo_req() runs as a generic netlink doit handler in
> > process context with BH not disabled. It calls udp_tunnel_xmit_skb(),
> > which eventually invokes iptunnel_xmit() =E2=80=94 that uses __this_cpu=
_inc/dec
> > on softnet_data.xmit.recursion to track the tunnel xmit recursion level=
.
> >
> > Without local_bh_disable(), the task may migrate between
> > dev_xmit_recursion_inc() and dev_xmit_recursion_dec(), breaking the
> > per-CPU counter pairing. The result is stale or negative recursion
> > levels that can later produce false-positive
> > SKB_DROP_REASON_RECURSION_LIMIT drops on either CPU.
> >
> > The other udp_tunnel_xmit_skb() call sites in gtp.c are unaffected:
> > the data path runs under ndo_start_xmit and the echo response handlers
> > run from the UDP encap rx softirq, both with BH already disabled.
> >
> > Fix it by disabling BH around the udp_tunnel_xmit_skb() call, mirroring
> > commit 2cd7e6971fc2 ("sctp: disable BH before calling
> > udp_tunnel_xmit_skb()").
>
> Why not fix iptunnel_xmit() directly, rather than fixing all possible
> callers? Basically, jut like we did for lwtunnel_{output|xmit}(). The
> advantage would be that we no longer have to worry about BHs in the
> callers, and BHs would only be disabled when necessary.

Good point =E2=80=94 your lwtunnel fix (c03a49f3093a) is a close parallel, =
and
  a central fix would avoid chasing callers one by one (sctp was patched
  last week, gtp is this one, and tipc/wireguard/ovpn genl paths look
  similar).

  Happy to respin as v2 with local_bh_disable/enable moved into
  iptunnel_xmit() (and ip6tunnel_xmit() for symmetry), and drop the
  gtp-local hunk. That would also supersede Xin Long's recent sctp
commit
  (2cd7e6971fc2), so I'll make sure to Cc him.

  One thing I'd like your take on before I send: iptunnel_xmit() feels
  like the natural home since it owns the recursion counter, but would
  you rather see it in udp_tunnel_xmit_skb()? I don't want to pick the
  wrong spot if you already have a preference.

Cheers !
