Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 002031A13BD
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  7 Apr 2020 20:36:23 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 6750110D071;
	Tue,  7 Apr 2020 18:36:22 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b=baWkl2ul
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 368 seconds by postgrey-1.37 at lists.osmocom.org;
 Mon, 06 Jan 2020 21:46:14 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=redhat.com
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.139.110.61;
 helo=us-smtp-1.mimecast.com; envelope-from=davem@redhat.com;
 receiver=<UNKNOWN> 
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
 by lists.osmocom.org (Postfix) with ESMTP id 040D11164FB
 for <osmocom-net-gprs@lists.osmocom.org>; Mon,  6 Jan 2020 21:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578347173;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=92IBDcXHrCniaPpYzIDDSbya4Iw/pUq5jseI84k5wbg=;
 b=baWkl2ul2mNSFMhASBJhG91fh5L5pLdiTcqQN33Z2I8k7SmqceM2U3W/7PKAzgtDm10jjG
 Yp+6ibrAuPw/2Y8lnqXkFR1YUWV3a0BbLVtOTZLnrF66FxQOdNDs5+8fY1yZtOj+qkO/PY
 Aj5aGYNgg2AXLFN7OBjVwlS+qiS1NuM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-226-VkcnwEa9M_2i3M_AYQK7-Q-1; Mon, 06 Jan 2020 16:40:00 -0500
X-MC-Unique: VkcnwEa9M_2i3M_AYQK7-Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 598AF10054E3;
 Mon,  6 Jan 2020 21:39:58 +0000 (UTC)
Received: from localhost (ovpn-112-4.rdu2.redhat.com [10.10.112.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0154D60E1C;
 Mon,  6 Jan 2020 21:39:55 +0000 (UTC)
Date: Mon, 06 Jan 2020 13:39:54 -0800 (PST)
Message-Id: <20200106.133954.516759492863458363.davem@redhat.com>
To: christophe.jaillet@wanadoo.fr
Subject: Re: [PATCH] gtp: simplify error handling code in 'gtp_encap_enable()'
From: David Miller <davem@redhat.com>
In-Reply-To: <20200105173607.5456-1-christophe.jaillet@wanadoo.fr>
References: <20200105173607.5456-1-christophe.jaillet@wanadoo.fr>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mailman-Approved-At: Tue, 07 Apr 2020 18:36:08 +0000
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
Cc: netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 laforge@gnumonks.org, pablo@netfilter.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Date: Sun,  5 Jan 2020 18:36:07 +0100

> 'gtp_encap_disable_sock(sk)' handles the case where sk is NULL, so there
> is no need to test it before calling the function.
> 
> This saves a few line of code.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Applied to net-next.

