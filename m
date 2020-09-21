Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 61705272C34
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 21 Sep 2020 18:30:13 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 5B922148CF8;
	Mon, 21 Sep 2020 16:30:07 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=fail (p=none dis=none) header.from=fe80.eu
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=fe80.eu header.i=@fe80.eu header.b=qz4Sp+xR
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 2374 seconds by postgrey-1.37 at lists.osmocom.org;
 Mon, 21 Sep 2020 16:30:03 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=fe80.eu
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:67c:2050:320::77; helo=mail.base45.de;
 envelope-from=lynxis@fe80.eu; receiver=<UNKNOWN> 
Received: from mail.base45.de (mail.base45.de [IPv6:2001:67c:2050:320::77])
 by lists.osmocom.org (Postfix) with ESMTP id 6AEAB148CE1
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 21 Sep 2020 16:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
 s=20190804; h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r/8/XWD/I+WeRXGu4hP93BnGdHW8C5bnEfT3cR3WKJw=; b=qz4Sp+xRrA24n1CC0SxE+Uvo2a
 CMq523RzcfplvVLe7g6YK4tPD0RLhETIlt96Y4bLo82fm+Ra+b5cneObLKznTsOLPPc9snSq0tnAh
 8h8mpxId27kRRl/Ba1entlvLU3qxZoAMfIRMdub4+bAsEjGDRTs8Am1dagnMyU0GSRODpBgu9/zDs
 QtUNEox/n6g3EJkZR0SwpwPC5MLuoWqdRnRpDLlFxWmlEPj7iWC67Uye6WSMWp4PDDk84qSPVH7B4
 i9iH1mf/YIUzzjFE7SxlKx3WapxCf1BaIeWQouZGk8I4Gcz0ALNJkl+2B6dpgee3VE2LUIuHO6xYP
 +Mu/Jcag==;
Received: from [212.91.253.66] (helo=lazus.yip)
 by mail.base45.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <lynxis@fe80.eu>)
 id 1kKO5E-0005Z9-8P; Mon, 21 Sep 2020 15:50:28 +0000
Date: Mon, 21 Sep 2020 17:50:17 +0200
From: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
To: Harald Welte <laforge@osmocom.org>
Cc: osmocom-net-gprs@lists.osmocom.org
Subject: Re: ns2 thoughts
Message-ID: <20200921175017.02906ee8@lazus.yip>
In-Reply-To: <20200918211518.GI1611880@nataraja>
References: <20200918211518.GI1611880@nataraja>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/8cxPvjtt2VftJ9MCfjhYPpy";
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

--Sig_/8cxPvjtt2VftJ9MCfjhYPpy
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

hi harald,


thanks for your review.

> I've been reading through the ns2 code more thoroughly and had some
> thoughts for improvement.  As we have no users yet, and the code is
> unreleased, we can still make changes now.
>=20
> =3D=3D unused argument in ns2_recv_vc
>=20
> int ns2_recv_vc(struct gprs_ns2_inst *nsi,
>                 struct gprs_ns2_vc *nsvc,
>                 struct msgb *msg)
>=20
> The 'nsi' is not used and should be redundant, as the nsvc has a
> back-pointer anyway, right?

Ack.
=20
> =3D=3D consider using an osmo_ prefix to all symbols / types
>=20
> The fact that the old code doesn't have that is a tribute to its age,
> and not something we need to keep.  The current code has quite a bit
> of 'gprs_ns2' prefixing for types, but not for the symbols/functions.
>  At least that inconsistency should be resolved, so all have the same
> prefix, even if it is without osmo.

The concept was prefix gprs_ns2 for public symbols and ns2 for
internal since some functions are used across files within libosmocore.
The osmo_ prefix sounds a lot cleaner.

> =3D=3D const-ify input arguments
>=20
> If arguments pointing to data are used read-only, let's express that
> by the const qualifier.  The easy ones are the likes of
> "gprs_ns2_is_frgre_bind(struct gprs_ns2_vc_bind *bind)",
> but there are definitely many more.

Ack.

> =3D=3D use of msgb->dst
>=20
> In several other osmocom implementations we use msgb->dst to point to
> the underlying element receiving or transmitting a message.  So I
> could imagine ns2_recv_vc() not only without the 'nsi' argument, but
> also without the 'nsvc' argument, if we introduce the convention that
> msgb->dst would always point to the ns-vc.
>=20
> Not sure here, it has pros and cons.  Just brainstorming.

Not sure if the effort for the msgb->dst is worth because we're only
using it internal. I don't have an opinion on this.
Except if we want to use the pointer for the resource distribution
function [48.016 4.4a].

> =3D=3D output arguments vs. return value

> There are functions like gprs_ns2_find_vc_by_sockaddr() where the
> result is not returned, but rather a **pointer output argument is
> used.  What is the rationale here?=20

In general I like the difference between result and return code.
ACK on gprs_ns2_find_vc_by_sockaddr() where there isn't much in the
result code.



Best Regards,
lynxis


--=20
Alexander Couzens

mail: lynxis@fe80.eu
jabber: lynxis@fe80.eu
gpg: 390D CF78 8BF9 AA50 4F8F  F1E2 C29E 9DA6 A0DF 8604

--Sig_/8cxPvjtt2VftJ9MCfjhYPpy
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOQ3PeIv5qlBPj/Hiwp6dpqDfhgQFAl9oy7kACgkQwp6dpqDf
hgR2bg/8DZdZO86IA7mdjfLlFpPKFfnFyZHGm5RsKfvaS+3K5m1K2pMunA1vM8w4
qhnyuDyCskQBSlDXBuF3qGpEHJZkXOzuAqn4XDgg82QHArOCLgwaFGQqbfRi5VLi
NQd/9gKkr3TNO9F8mHFB28uv8FFpnMQc5q48XKVVWKmtWnNZFvsDP61necZvaT5l
AABaz/suiDHFrdsDgemE3vD430C/qbnOMD4l+N1LOsWCeJAXG4mhTeXefzntK6qG
KYXghcQr+OF10KO1EnCiH2WhTnWgGPthtPdOpztLSBOwViMOnePRumZPSzE9Ltaf
qWQMiCqGmkUG70fWVXlwK1fqYXArsIryafP82f8/9dXhgZVmpmJJxyErIXxzhVqE
cNl8FhR5wHbkq8X6vzGRDw9kAAycLltV3VGdPz2Kfdj+916aasCyo2mQrNk0lOuq
sCnw6U0E70aa4b94u8IBQNDhZC/mdSb6KJ4XKNV7UUzmPdUP7B2b2m1m9L6YTMQi
dO2UBjTrFTDluZPR+IZqxYQ/U48UXo03lkKRE3n8mLnHC0exK+dits9qB7azlVzi
rSS+3Qltj054QMtg8mq4T2OUIpXumBBoamDZE1oLeKg6WCRw3gzf5EyJ7vcNcv+p
LbGCxJ+mc2cbcNfHiHjmsOqLi/tvGhwlBOTbQwMWLJ0Zp5ieax4=
=S4aN
-----END PGP SIGNATURE-----

--Sig_/8cxPvjtt2VftJ9MCfjhYPpy--
