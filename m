Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 2A37229496E
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 21 Oct 2020 10:40:11 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 5C241195A44;
	Wed, 21 Oct 2020 08:40:09 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 92DE2195A32
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 21 Oct 2020 08:40:04 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1kV9fA-0000WG-9i; Wed, 21 Oct 2020 10:40:04 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@osmocom.org>)
 id 1kV9eW-003bCr-QF; Wed, 21 Oct 2020 10:39:24 +0200
Date: Wed, 21 Oct 2020 10:39:24 +0200
From: Harald Welte <laforge@osmocom.org>
To: Jean-Marc Katembwe <ejeakaz@gmail.com>
Cc: osmocom-net-gprs@lists.osmocom.org
Subject: Re: IPv6 PDP type support
Message-ID: <20201021083924.GF35229@nataraja>
References: <CABrMUE5i+8tkibSd+AYuHkiwVavUtKxazxOkvKGgXhup3BrV_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABrMUE5i+8tkibSd+AYuHkiwVavUtKxazxOkvKGgXhup3BrV_Q@mail.gmail.com>
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

Dear Jean-Marc,

On Tue, Oct 20, 2020 at 09:18:52PM +0200, Jean-Marc Katembwe wrote:
> I would like to know if the current OsmoSGSN version can support IPv6 PDP
> type.

Yes,it does.  Unfortunately it is not explicitly mentioned in the user manual
at https://ftp.osmocom.org/docs/latest/osmosgsn-usermanual.pdf
but can be seeon only implicitly in the VTY reference manual
at https://ftp.osmocom.org/docs/latest/osmoggsn-vty-reference.pdf

There are automatic tests that execute every night, go to
https://jenkins.osmocom.org/jenkins/view/TTCN3/job/ttcn3-ggsn-test/test_results_analyzer/
and click on 'expand all', where you can see various 'pdp6' and 'pdp46' test cases
all passing.

The same is true for the latest released/tagged version, see
https://jenkins.osmocom.org/jenkins/view/TTCN3/job/ttcn3-ggsn-test-latest/test_results_analyzer/

Regards,
	Harald

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
