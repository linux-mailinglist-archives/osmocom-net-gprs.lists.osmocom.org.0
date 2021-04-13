Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id E641D35DC37
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Apr 2021 12:10:31 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 283E81D83FC;
	Tue, 13 Apr 2021 10:10:29 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=superlative.org
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=superlative.org header.i=@superlative.org header.b=s8ZdQCC5
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::431; helo=mail-wr1-x431.google.com;
 envelope-from=maillist@superlative.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none)
 header.from=superlative.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by lists.osmocom.org (Postfix) with ESMTP id 40EFB1D83DC
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 13 Apr 2021 10:10:20 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id w4so12099574wrt.5
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 13 Apr 2021 03:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=superlative.org; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iPoMUTCvMmBLKVDfiISM3zltqm8UeslYIrS6U82nCyg=;
 b=s8ZdQCC5gy2TCJkY9XdtcTRZ7qfUwChYdN+2Slt6geiKIdjplZHTwZdk9/78+8UrEQ
 gF5F92L1oBGjzrm9p+hTnqk76UysAtKXmNBN+///KubJOwACIVAvXTz+D9EQF3yu8vSA
 hIVLhXPL21nxlO1k9WSldbyyC7UNloZ4US8YZQQ0D5e3V0ZPUX9rRAYVG15LlQ0Cj3jQ
 53ahMNrYqsXGujUisUzzsD30c+zJQZ/mvzBrgUp94pHJeayY5IYNZ265xu2wzLe+MCO1
 Sk4Pc08+XBJ96oq/+Z+fChUXMrJEd5fJ1ROGO4xBiA1zxgQszBwHIGXrdi+KFxaxl6Fc
 yBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iPoMUTCvMmBLKVDfiISM3zltqm8UeslYIrS6U82nCyg=;
 b=bFJtrkTVL1Soo278EySPo18sL71e/xg6/e8mjDXKU4oFryYLc+M6sYDe2bLt1MuWYl
 MjvXRZAAncB0UAt0LdAcnSPqwcNq0Wqms0t7Vs21QC4InUlmO8sQbBsFItlm6VK6ooz3
 dXHm8rLKtgn3fKLKKsq6h786kzaqdIvouzZiu2bXsD1U/hkxrFDOQR12lC3+H22CUNIy
 fSgFUgEQe6LC98AecWSwT07JLK7zp8hFM1Qnejo/LDczd73gpWyWxUC4Y/iRI8Mnb28C
 1ABMrETtKxB+1FwJaB1l1j1oKWLLlInFRyynvZHuIJ0MBwRD/LNRHS2JqkVhOY1b+BRl
 o2aw==
X-Gm-Message-State: AOAM531j2kBzSpR1admQwad88G/c4QEXz0CNN2a7GjkrJjxrkcErSWy1
 CzDC3sFyfMlafyaFvWUH95I8I7Tgfrcrjg==
X-Google-Smtp-Source: ABdhPJxPOGc9GZwMv5b4SG53Ynk3xJjOtg83uZs0k7v/Y8HeDE0tySZMILQOU5EuN/bkIr0dfasT3w==
X-Received: by 2002:adf:fcca:: with SMTP id f10mr27337724wrs.148.1618308620184; 
 Tue, 13 Apr 2021 03:10:20 -0700 (PDT)
Received: from kam-desktop.localnet (grenville1.superlative.org.
 [81.187.25.35])
 by smtp.gmail.com with ESMTPSA id c18sm16441141wrn.92.2021.04.13.03.10.19
 for <osmocom-net-gprs@lists.osmocom.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 03:10:19 -0700 (PDT)
From: "Keith A. Milner" <maillist@superlative.org>
To: osmocom-net-gprs@lists.osmocom.org
Subject: Osmo-ggsn MTU issue with Kernel GTP
Date: Tue, 13 Apr 2021 11:10:18 +0100
Message-ID: <2061578.irdbgypaU6@kam-desktop>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
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

I've had an interesting situation with osmo-ggsn and kernel GTP module that I 
wonder if someone could shed some light on.

I've set up osmo-ggsn (v1.7.1) on Debian 10. There are two ethernet interfaces 
on the system, ens224 (for the Gn Interface) and ens256 (for the Gi 
Interface).

Using the following ggsn configuration seems to work fine:

ggsn ggsn0
 description Keith's Test APN
 gtp state-dir /tmp
 gtp bind-ip <ens224 IP>
 gtp control-ip <ens224 IP>
 apn keithtest
  gtpu-mode tun
  tun-device apn0
  type-support v4
  ip prefix dynamic 192.168.42.0/24
  ip dns 0 <redacted>
  ip dns 1 <redacted>
  ip ifconfig 192.168.42.0/24
  no shutdown
 default-apn keithtest
 no shutdown ggsn

I get the following tun device:

5: apn0: <POINTOPOINT,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UNKNOWN 
group default qlen 500
    link/none 
    inet 192.168.42.0/24 scope global apn0
       valid_lft forever preferred_lft forever
    inet6 fe80::fada:2e69:ad71:a61b/64 scope link stable-privacy 
       valid_lft forever preferred_lft forever

Traffic routes, all is good with the world.

However, if I change to using Kernel GTP, by changing the gtpu-mode to 
"kernel-gtp", traffic will not route (and, yes, I have done modprobe gtp). After 
some exploration, it appears the tun device is being created with an MTU of 
zero which then, cannot pass traffic:

10: apn0: <POINTOPOINT,UP,LOWER_UP> mtu 0 qdisc noqueue state UNKNOWN group 
default qlen 1000
    link/none 
    inet 192.168.42.0/24 scope global apn0
       valid_lft forever preferred_lft forever

Here are the logs:

Tue Apr 13 11:02:06 2021 DGGSN NOTICE <0002> ggsn.c:830 GGSN(ggsn0): 
Successfully started
Tue Apr 13 11:02:06 2021 DGGSN INFO <0002> ggsn.c:186 APN(keithtest): Starting
Tue Apr 13 11:02:06 2021 DGGSN INFO <0002> ggsn.c:204 APN(keithtest): Opening 
Kernel GTP device apn0
Tue Apr 13 11:02:06 2021 DGGSN NOTICE <0002> gtp-kernel.c:79 Initialized GTP 
kernel mode (genl ID is 24)
Tue Apr 13 11:02:06 2021 DTUN NOTICE <0001> tun.c:217 GTP kernel configured
Tue Apr 13 11:02:06 2021 DGGSN INFO <0002> ggsn.c:236 APN(keithtest): Setting 
tun IP address 192.168.42.0/24
Tue Apr 13 11:02:06 2021 DGGSN INFO <0002> ggsn.c:294 APN(keithtest): Creating 
IPv4 pool 192.168.42.0/24
Tue Apr 13 11:02:06 2021 DGGSN INFO <0002> ggsn.c:168 APN(keithtest): 
Blacklist tun IP 192.168.42.0/24
Tue Apr 13 11:02:06 2021 DGGSN NOTICE <0002> ggsn.c:325 APN(keithtest): 
Successfully started

Note that if I manually alter the MTU, everything starts working again:
ip link set dev apn0 mtu 1500

So I can put this into a script and run it via ipup-script, and this works 
fine. I just get the impression I shouldn't have to do this, and the system 
should be setting the MTU, just as it does when I use tun mode.

Any thoughts on what I'm doing wrong here?

Cheers,

Keith


