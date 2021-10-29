Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id D72EC43FB3D
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 29 Oct 2021 13:10:20 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 6BBED217BB6;
	Fri, 29 Oct 2021 11:10:17 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id C4182217BA4
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 29 Oct 2021 11:10:06 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@gnumonks.org>)
 id 1mgPls-0005Rb-Bo; Fri, 29 Oct 2021 13:10:04 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.95)
 (envelope-from <laforge@gnumonks.org>) id 1mgPcs-00FpQI-UN;
 Fri, 29 Oct 2021 13:00:46 +0200
Date: Fri, 29 Oct 2021 13:00:46 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Mirko Kovacevic <northmirko@gmail.com>
Cc: osmocom-net-gprs@lists.osmocom.org
Subject: Re: TTCN-3 tests for MME
Message-ID: <YXvUXgqlMoweEISz@nataraja>
References: <CAMYWRL_Bn9TzSL6vAdzA=E8oK8hEWtYTP890dHg1JVd0g5b_pA@mail.gmail.com>
 <CAMYWRL_ibx+Z-CrV2vqytLEuU5PWfLr7yDkG54OnBNkbmWahyQ@mail.gmail.com>
 <YXbRYNTFS+5z8Tyi@nataraja>
 <CAMYWRL8w3Zhdg4E=-JrdGNMHrH86OtMjdErt8s_92086Fk=iUw@mail.gmail.com>
 <CAMYWRL-rZN7G9F1pH854pTUcvpZ-GfSHT99g2pLr+6aCM2dY2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMYWRL-rZN7G9F1pH854pTUcvpZ-GfSHT99g2pLr+6aCM2dY2Q@mail.gmail.com>
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

Hi Mirko,

On Fri, Oct 29, 2021 at 09:13:25AM +0200, Mirko Kovacevic wrote:
> But don't bother with this small defect, we can live without MMEname,
> ENBname, they are optional in many production systems, too.

Thanks.
Given the current workload and the fact that there is no customer paying
for this, I think it will be a low priority item and unlikely to be
investigated any time soon.

> S1 handover would be a very good case to write.

Well, osmocom is a collaborative open source project.  Anyone can add whatever
test cases they want, we're happy to merge any related patches.

Regards,
	Harald
-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
