Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 2AA1428FC40
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 16 Oct 2020 03:32:14 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id B09D018D25D;
	Fri, 16 Oct 2020 01:32:07 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=fail (p=none dis=none) header.from=fe80.eu
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=fe80.eu header.i=@fe80.eu header.b=jBxu4boF
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:67c:2050:320::77; helo=mail.base45.de;
 envelope-from=lynxis@fe80.eu; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=fe80.eu
Received: from mail.base45.de (mail.base45.de [IPv6:2001:67c:2050:320::77])
 by lists.osmocom.org (Postfix) with ESMTP id 9431818D247
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 16 Oct 2020 01:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
 s=20190804; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D1suJFbUn9JPoVt+0mt546evcgvuC1BZRcYZMpmZ7hE=; b=jBxu4boFah3GunTSdSaDJpYjck
 ho1l/ZsdTrq44qr+7alfTyW1Sdrd6/Q7wG3QfwWKTjkbxztMWalKzN+t+AxYaGa4mGdj9r2FQbQmB
 YmmVnLmDDOkg7IKmz9jeVzd2t9PW47LezIx8/TdYw1NWYLi6cd5z0WoUqvdzH2JEVpNRDIAXMB1V0
 9B2QN0jvK/d9F3gvMfGYEtsdEFb0xlI+ABAEmRieBA9Cw5L74iRC55NoG7s4ahZ25yKyxsbJ2+mFs
 9EfQoIL3SWWX+XJepx2xtaXKgU9A7eNiiTIQSEg6lFQaIq9kRDEbjxsKfVi6U6KqfNvVGAoI8MwIX
 59N8o6Yg==;
Received: from [92.206.250.226] (helo=lazus.yip)
 by mail.base45.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <lynxis@fe80.eu>) id 1kTEbB-0000oo-4h
 for osmocom-net-gprs@lists.osmocom.org; Fri, 16 Oct 2020 01:32:01 +0000
Date: Fri, 16 Oct 2020 03:31:55 +0200
From: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
To: osmocom-net-gprs@lists.osmocom.org
Subject: [RFC] NS VTY interface
Message-ID: <20201016033155.17172a96@lazus.yip>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/c_10IjBBze3FKd6CySqY6Wp";
 protocol="application/pgp-signature"; micalg=pgp-sha512
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

--Sig_/c_10IjBBze3FKd6CySqY6Wp
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi,

with the new NS2 code [1] the vty keep compatible. However the new NS2
code is more flexible and support more use cases except the old vty
doesn't allow it.

I've created an osmocom ticket [2] to experiment and write a draft of
the new VTY commands.
I would be nice if you can give me some feedback here.

Best,
lynxis

[1] NS <> NS2. it's still the same protocol, just a second
implementation of NS.

[2] https://osmocom.org/issues/4770

new vty example:

1.1. sgsn with udp bind - ipa style
1.2. sgsn with udp bind - with persistent nsvc
1.3. sgsn with sns listen on all interfaces
1.4. sgsn with sns listen on specific interface
1.5. sgsn with fr

2.1. TODO: pcu with binds to use when receiving info ind
2.2. TODO: pcu with static configuration

<pre>
;; 1.1. sgsn with udp bind - dynamic with ipa style

ns
 bind udp some
  listen 192.168.0.2 23000
  allow-block-reset-nsvci
</pre>

<pre>
;; 1.2. sgsn with udp bind - no dynamic connection - only vty
configured NSE (persistent)

ns
 bind udp some
  listen 192.168.0.2 23000
 nsei 1001
  nsvc udp some 10.0.1.2 23000
</pre>

<pre>
;; 1.2. sgsn with udp bind - no dynamic connection - only vty
configured NSE (persistent)

ns
 bind udp some
  listen 192.168.0.2 23000
 bind udp other
  listen 192.168.1.2 23000
 nsei 1001
  ;; will use all bindings
  nsvc udp * 10.0.1.2 23000
 nsei 1002
  nsvc udp other 10.0.1.3 23000
  nsvc udp some 10.0.1.3 23000
</pre>

<pre>
;; 1.3. sgsn with sns listen on all interfaces
ns
 bind udp some
  listen 192.168.0.2 23000
  allow-sns group all
 bind udp other
  listen 192.168.1.2 23000
  allow-sns group all
</pre>

<pre>
;; 1.4. sgsn with sns listen on specific interface

ns
 bind udp some
  listen 192.168.0.2 23000
  allow-sns group alice
 bind udp other
  listen 192.168.1.2 23000
  allow-sns group bob
</pre>

<pre>
;; 1.5. sgsn with fr

fr
 link hdlc1
 link hdlc2

ns
 nsei 1002
  nsvc fr hdlc1 dlci 10
  nsvc fr hdlc2 dlci 10
</pre>

--=20
Alexander Couzens

mail: lynxis@fe80.eu
jabber: lynxis@fe80.eu
gpg: 390D CF78 8BF9 AA50 4F8F  F1E2 C29E 9DA6 A0DF 8604

--Sig_/c_10IjBBze3FKd6CySqY6Wp
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOQ3PeIv5qlBPj/Hiwp6dpqDfhgQFAl+I+AsACgkQwp6dpqDf
hgQyRQ/+JG/6xGvxBVqEX4pjQdRpGOBxWWrLcT48usw/uHC4RCdAc1PpZ6sfj4Zh
/XvoBse4nQsfyORZBY+n34JUGU5cOzq7ZqIX9xvBZi6tpJf4JUJ513HreasHr42g
+kBH9KLXOvD+MeqWGht+43N7uE1VJRLf9o1SevJvPh400mzjgp02fszLcwxsMqAJ
tlJsVw58NocsXRADsziKvEzSyZ1r3Hw7axCgpkAo1XJxzdjVOGYyREf/t7W/2e3p
hXLUEJT1dxZu0JN6TC6szgpMu0AWbMHBIi2/P3OloLZgmPh29+0PQloLY67Kb+mK
FZlgSqIs5a20VYxc8O5l0w43b/++PlgifNf0z3EshSEKvGpwMdlPAPVsro4V1FNt
0GEmv8rvOJC8B3JSF5ZW2iaBZQdgspZUgrSL6EB0G0/szIVMfYiNXwTorn54tzeC
m5ghRIqJdtjISPCngm7QdHuMyU7qH8nH73MOsvrvP3GgrB9WlIMVw/2PVncbwzus
Ei21dwZO9ifxUVbddfTj8OLXN+QfpzrVPbN4b/1sFg4GSyVdvM33UGOnPQ1zLuTt
zRixMz0CujxivqBFmKNG5ZkgEpSqokWDZ9nL6Gl+GXZb21IRtbghOZL1YbYlIrFM
QAgJodJh17iaQ8wxYxMfh+i8yteO3m9ExLuHFydRqLJrj37tl5w=
=O+vb
-----END PGP SIGNATURE-----

--Sig_/c_10IjBBze3FKd6CySqY6Wp--
