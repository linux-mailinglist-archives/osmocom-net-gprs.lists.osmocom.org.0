Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id C6B2B32BA3E
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  3 Mar 2021 20:43:52 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 7D8F21B91BF;
	Wed,  3 Mar 2021 19:43:44 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=sysmocom.de
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a01:4f8:191:444c::2:4; helo=mail.sysmocom.de;
 envelope-from=nhofmeyr@sysmocom.de; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=sysmocom.de
Received: from mail.sysmocom.de (mail.sysmocom.de
 [IPv6:2a01:4f8:191:444c::2:4])
 by lists.osmocom.org (Postfix) with ESMTP id 865391B9150;
 Wed,  3 Mar 2021 19:42:01 +0000 (UTC)
Received: from public-mail (mail.sysmocom.de [144.76.43.93])
 by mail.sysmocom.de (Postfix) with ESMTP id E6DE9503A1D;
 Wed,  3 Mar 2021 19:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([144.76.43.93])
 by public-mail (mail.sysmocom.de [144.76.43.93]) (amavisd-new, port 10024)
 with ESMTP id wtkGk6d2-OPL; Wed,  3 Mar 2021 19:41:58 +0000 (UTC)
Received: from my.box (p2e505ba3.dip0.t-ipconnect.de [46.80.91.163])
 by mail.sysmocom.de (Postfix) with ESMTPSA id E80E9503A0C;
 Wed,  3 Mar 2021 19:41:56 +0000 (UTC)
Date: Wed, 3 Mar 2021 20:41:07 +0100
From: Neels Hofmeyr <nhofmeyr@sysmocom.de>
To: Harald Welte <laforge@osmocom.org>
Cc: openbsc@lists.osmocom.org, baseband-devel@lists.osmocom.org,
 simtrace@lists.osmocom.org, osmodevcon@lists.osmocom.org,
 osmocom-net-gprs@lists.osmocom.org
Subject: Re: Osmocom Mailing List re-organization
Message-ID: <20210303194107.GC1166@my.box>
References: <YD9QFn3y8ZxcTHTH@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YD9QFn3y8ZxcTHTH@nataraja>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

I think we also could change jenkins-notifications and/or gerrit-log, IIRC one
of those was once named "the high noise mailing list" and catches more than
just what the name says, currently don't remember which/both of them?

builds@ ?
noise@ ?
build-noise@ ?
