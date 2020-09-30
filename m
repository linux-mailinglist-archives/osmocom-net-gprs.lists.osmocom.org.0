Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 9F81A27E759
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 30 Sep 2020 13:03:45 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id DA39215D20A;
	Wed, 30 Sep 2020 11:03:41 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=gnumonks.org
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:780:45:1d:225:90ff:fe52:c662; helo=ganesha.gnumonks.org;
 envelope-from=laforge@gnumonks.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=gnumonks.org
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by lists.osmocom.org (Postfix) with ESMTP id 5BED515D1F8
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 30 Sep 2020 11:03:36 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@gnumonks.org>)
 id 1kNZtX-0008Kt-5k; Wed, 30 Sep 2020 13:03:35 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@gnumonks.org>)
 id 1kNZrt-000zE9-VK; Wed, 30 Sep 2020 13:01:53 +0200
Date: Wed, 30 Sep 2020 13:01:53 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Richard Haines <richard_c_haines@btinternet.com>
Cc: selinux@vger.kernel.org, linux-security-module@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 stephen.smalley.work@gmail.com, paul@paul-moore.com,
 pablo@netfilter.org, jmorris@namei.org
Subject: Re: [PATCH 3/3] selinux: Add SELinux GTP support
Message-ID: <20200930110153.GT3871@nataraja>
References: <20200930094934.32144-1-richard_c_haines@btinternet.com>
 <20200930094934.32144-4-richard_c_haines@btinternet.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200930094934.32144-4-richard_c_haines@btinternet.com>
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

Hi Richard,

I don't fully understand in which context you need / use those SELinux GTP hooks,
however one comment from the point of view of somebody who is working on GGSN/P-GW
software using the GTP kernel module:

On Wed, Sep 30, 2020 at 10:49:34AM +0100, Richard Haines wrote:
> +selinux_gtp_dev_cmd()
> +~~~~~~~~~~~~~~~~~~~~~
> +Validate if the caller (current SID) and the GTP device SID have the required
> +permission to perform the operation. The GTP/SELinux permission map is
> +as follow::
> +
> +    GTP_CMD_NEWPDP = gtp { add }
> +    GTP_CMD_DELPDP = gtp { del }
> +    GTP_CMD_GETPDP = gtp { get }

Wouldn't it make sense to differentiate between:

a) add/del/get on the GTP netdev
b) add/del/get on the indivudual PDP wihin the GTP netdev

'a' is typically only created once at startup of a GGSN/P-GW software, or is
done even at system stat-up time.

'b' is performed frequently during runtime as the GGSN/P-GW function runs, as
subscribers attach to / detach from the cellular network.

By differentiating between those two, one could further constrain the permissions
required at runtime.

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
