Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 24BAC27140D
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 20 Sep 2020 13:59:39 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 16622144EB3;
	Sun, 20 Sep 2020 11:59:34 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=osmocom.org
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:780:45:1d:225:90ff:fe52:c662; helo=ganesha.gnumonks.org;
 envelope-from=laforge@osmocom.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=osmocom.org
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by lists.osmocom.org (Postfix) with ESMTP id 376E5144E9D
 for <osmocom-net-gprs@lists.osmocom.org>; Sun, 20 Sep 2020 11:59:27 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1kJy05-0006IZ-Rf; Sun, 20 Sep 2020 13:59:25 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@osmocom.org>)
 id 1kJxwg-008TqP-LW; Sun, 20 Sep 2020 13:55:54 +0200
Date: Sun, 20 Sep 2020 13:55:54 +0200
From: Harald Welte <laforge@osmocom.org>
To: =?utf-8?B?0KHQtdGA0LPQtdC5INCV0LPQvtGA0L7Qsg==?= <serge1991drum@mail.ru>
Cc: osmocom-net-gprs@lists.osmocom.org
Subject: Re:  GSM, GPRS
Message-ID: <20200920115554.GB2019632@nataraja>
References: <1600422823.106963076@f106.i.mail.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1600422823.106963076@f106.i.mail.ru>
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

Dear Sergei,

I'm not an expert in GEA and it's been a long time since I last looked at it.

However,

On Fri, Sep 18, 2020 at 12:53:43PM +0300, Сергей Егоров wrote:
> Can the value of IOV_UI (Osmocom BS: 0, real BS: 0x10000000) affect the deciphering, and if yes then how??

well, as you know the IV (initialization vector) is an input parameter into the 
encryption/decryption algorithm.  It must match, otherwise you will get completely
different results.

You could try to modify the Osmocom stack (here: OsmoSGSN) to also use the same IV
that you see in your commercial/production netwokr, and see if that gets you any
further in understanding any differences?

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
