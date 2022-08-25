Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5F65A4F79
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 29 Aug 2022 16:41:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6CD2F282C6;
	Mon, 29 Aug 2022 14:41:35 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UlKU1yirqMYx; Mon, 29 Aug 2022 14:41:35 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A67E32818F;
	Mon, 29 Aug 2022 14:41:32 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id B5D6C38A0B0F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 25 Aug 2022 19:22:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 93C6328192
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 25 Aug 2022 19:22:06 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IPzVmuJjoKAt for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 25 Aug 2022 19:22:05 +0000 (UTC)
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
	by mail.osmocom.org (Postfix) with ESMTPS id A305E2818F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 25 Aug 2022 19:22:05 +0000 (UTC)
Received: by mail-oi1-x22f.google.com with SMTP id n124so13533030oih.7
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 25 Aug 2022 12:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=j11I9jJbBdP2EsV8zm8vGrZ8to2ALD+DZiEMfyWlhf4=;
        b=KjzVxnhpw6QKMn5c7oLhZ2YXfy0o0q7ppQDDA/IUG9Tba1CyII5IegLq2jiOsTx6sf
         9PktWYsvLhv6OduPZa78FKjas33U49IxO+UttcDOMAdp3MTlGJvDXLmU3ofAZEoFFqZT
         pafvPKdLl3l0hKSE9VWBcm6msZs1UGsFX0W0WhRtsci35MLKycrvSxbg6GiEiXprLSDz
         35gtzDXDspqbKE6U1rd+mL/P+1w92XWlGqtbdRRUw9gw3+q3FfhdBiDfZom+YIwlZBrE
         iSIuTPlKIwHdWrtxWrdA/Tch392Qi6e4omMMHzm85TUdvnZFdOZSQACivsWz9KW0c6uk
         JDjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=j11I9jJbBdP2EsV8zm8vGrZ8to2ALD+DZiEMfyWlhf4=;
        b=pqCgem4mtu5d7xz506CMroR4cy/JSNV4orpJ63ZUzMuoSj8PBtPOJ+eynB1q3JJs9c
         8pnEofUKd2vXm9Z/3K83/huZR0/8cINk1bNf7/MWMcNgVSR9cWHqZ7Mw5FLEJSIb0OO0
         DIIQeWKrvXxywlca2bs97JJt+ng7ctG4o/+PM9/D5OgNc+8LEQQmXd2C+YcnKdfFZBxu
         QwldUXbXmF9BZN6NFGuPH9rqGaZwhOCSv7BB7d9LTIao8VdMGzpxzjosRtbbLiAykxVs
         NcC5Sf1UK1IOL6FglFoMoS2s2vhb4EwCy3Rj3jtmFOn6REjPZQBnESLyYFK4Ll+wxWgN
         H/cQ==
X-Gm-Message-State: ACgBeo2DN/Avx6VN52rPcw2pUBHA2Bf9nxMfmleOM1afkAIuzWWD75Km
	wBEDoT840FmZxnug0rcL4GhPuCiYxTlYPuD71ggs
X-Google-Smtp-Source: AA6agR5+NrNDgFeVEqQOH6xO8KzleveZvD24+0ma4hp6CR5I88pcrQbnickGgaR7sl54W0OczwK1VkCsRh+9Rsqv/HQ=
X-Received: by 2002:a05:6808:3a9:b0:343:4b14:ccce with SMTP id
 n9-20020a05680803a900b003434b14cccemr243316oie.41.1661455322788; Thu, 25 Aug
 2022 12:22:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220825001830.1911524-1-kuba@kernel.org>
In-Reply-To: <20220825001830.1911524-1-kuba@kernel.org>
From: Paul Moore <paul@paul-moore.com>
Date: Thu, 25 Aug 2022 15:21:52 -0400
Message-ID: <CAHC9VhSxesi0TSSvcQSr1kDhP3Vce4+O3w2diEExGEGnjGpmiw@mail.gmail.com>
Subject: Re: [PATCH net-next] genetlink: start to validate reserved header bytes
To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-MailFrom: paul@paul-moore.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: BSYO77O6WPE5XDCMCZVEQH56RG5T3CJD
X-Message-ID-Hash: BSYO77O6WPE5XDCMCZVEQH56RG5T3CJD
X-Mailman-Approved-At: Mon, 29 Aug 2022 14:41:23 +0000
CC: davem@davemloft.net, netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com, jiri@resnulli.us, johannes@sipsolutions.net, linux-block@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, linux-wpan@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org, target-devel@vger.kernel.org, linux-pm@vger.kernel.org, virtualization@lists.linux-foundation.org, linux-cifs@vger.kernel.org, cluster-devel@redhat.com, mptcp@lists.linux.dev, lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org, linux-security-module@vger.kernel.org, dev@openvswitch.org, linux-s390@vger.kernel.org, tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/BSYO77O6WPE5XDCMCZVEQH56RG5T3CJD/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Wed, Aug 24, 2022 at 8:18 PM Jakub Kicinski <kuba@kernel.org> wrote:
>
> We had historically not checked that genlmsghdr.reserved
> is 0 on input which prevents us from using those precious
> bytes in the future.
>
> One use case would be to extend the cmd field, which is
> currently just 8 bits wide and 256 is not a lot of commands
> for some core families.
>
> To make sure that new families do the right thing by default
> put the onus of opting out of validation on existing families.
>
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
> CC: jiri@resnulli.us
> CC: johannes@sipsolutions.net
> CC: linux-block@vger.kernel.org
> CC: osmocom-net-gprs@lists.osmocom.org
> CC: linux-wpan@vger.kernel.org
> CC: wireguard@lists.zx2c4.com
> CC: linux-wireless@vger.kernel.org
> CC: linux-scsi@vger.kernel.org
> CC: target-devel@vger.kernel.org
> CC: linux-pm@vger.kernel.org
> CC: virtualization@lists.linux-foundation.org
> CC: linux-cifs@vger.kernel.org
> CC: cluster-devel@redhat.com
> CC: mptcp@lists.linux.dev
> CC: lvs-devel@vger.kernel.org
> CC: netfilter-devel@vger.kernel.org
> CC: linux-security-module@vger.kernel.org
> CC: dev@openvswitch.org
> CC: linux-s390@vger.kernel.org
> CC: tipc-discussion@lists.sourceforge.net
> ---
>  drivers/block/nbd.c                      | 1 +
>  drivers/net/gtp.c                        | 1 +
>  drivers/net/ieee802154/mac802154_hwsim.c | 1 +
>  drivers/net/macsec.c                     | 1 +
>  drivers/net/team/team.c                  | 1 +
>  drivers/net/wireguard/netlink.c          | 1 +
>  drivers/net/wireless/mac80211_hwsim.c    | 1 +
>  drivers/target/target_core_user.c        | 1 +
>  drivers/thermal/thermal_netlink.c        | 1 +
>  drivers/vdpa/vdpa.c                      | 1 +
>  fs/cifs/netlink.c                        | 1 +
>  fs/dlm/netlink.c                         | 1 +
>  fs/ksmbd/transport_ipc.c                 | 1 +
>  include/linux/genl_magic_func.h          | 1 +
>  include/net/genetlink.h                  | 3 +++
>  kernel/taskstats.c                       | 1 +
>  net/batman-adv/netlink.c                 | 1 +
>  net/core/devlink.c                       | 1 +
>  net/core/drop_monitor.c                  | 1 +
>  net/ethtool/netlink.c                    | 1 +
>  net/hsr/hsr_netlink.c                    | 1 +
>  net/ieee802154/netlink.c                 | 1 +
>  net/ieee802154/nl802154.c                | 1 +
>  net/ipv4/fou.c                           | 1 +
>  net/ipv4/tcp_metrics.c                   | 1 +
>  net/ipv6/ila/ila_main.c                  | 1 +
>  net/ipv6/ioam6.c                         | 1 +
>  net/ipv6/seg6.c                          | 1 +
>  net/l2tp/l2tp_netlink.c                  | 1 +
>  net/mptcp/pm_netlink.c                   | 1 +
>  net/ncsi/ncsi-netlink.c                  | 1 +
>  net/netfilter/ipvs/ip_vs_ctl.c           | 1 +
>  net/netlabel/netlabel_calipso.c          | 1 +
>  net/netlabel/netlabel_cipso_v4.c         | 1 +
>  net/netlabel/netlabel_mgmt.c             | 1 +
>  net/netlabel/netlabel_unlabeled.c        | 1 +
>  net/netlink/genetlink.c                  | 4 ++++
>  net/nfc/netlink.c                        | 1 +
>  net/openvswitch/conntrack.c              | 1 +
>  net/openvswitch/datapath.c               | 3 +++
>  net/openvswitch/meter.c                  | 1 +
>  net/psample/psample.c                    | 1 +
>  net/smc/smc_netlink.c                    | 3 ++-
>  net/smc/smc_pnet.c                       | 3 ++-
>  net/tipc/netlink.c                       | 1 +
>  net/tipc/netlink_compat.c                | 1 +
>  net/wireless/nl80211.c                   | 1 +
>  47 files changed, 56 insertions(+), 2 deletions(-)

Acked-by: Paul Moore <paul@paul-moore.com> (NetLabel)

-- 
paul-moore.com
