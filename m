Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BF6A8B720
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 16 Apr 2025 12:48:08 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 64ED623769B;
	Wed, 16 Apr 2025 10:48:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JbViJQHkaQ5A; Wed, 16 Apr 2025 10:48:07 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 7CDB6237690;
	Wed, 16 Apr 2025 10:48:04 +0000 (UTC)
Received: from lists (localhost [IPv6:::1])
	by lists (Postfix) with ESMTP id BD0C438A1964
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Apr 2025 10:47:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: PGW stress test using OSMO-UECUPS and TTCN-3/PGW test suite
From: boufaresimen1994@gmail.com
To: osmocom-net-gprs@lists.osmocom.org
Date: Wed, 16 Apr 2025 10:47:59 -0000
Message-ID: <174480047976.526.5339824699417082982@lists>
User-Agent: HyperKitty on https://lists.osmocom.org/
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JU4THKQVRNLEO47GR2EIVACGLYARJETR
X-Message-ID-Hash: JU4THKQVRNLEO47GR2EIVACGLYARJETR
X-MailFrom: boufaresimen1994@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/JU4THKQVRNLEO47GR2EIVACGLYARJETR/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Dear Osmocom Community,

I hope this message finds you well.

I am currently setting up a testing environment to evaluate the performan=
ce of my Packet Gateway (PGW) in terms of maximum simultaneous active ses=
sions and bandwidth.

The architecture of my test setup includes:
VM osmo-ttcn3: Hosts the TTCN-3 framework, which initiates GTP-C session =
creation and integrates with the osmo-uecups solution to simulate user se=
ssions by sending ICMP echo requests (pings) to public IP addresses (e.g.=
, 8.8.8.8).=E2=80=8B
VM osmo-uecups: Manages network namespaces (netns), each representing a s=
imulated user session.=E2=80=8B
VM pgw: My Packet Gateway, handling the routing and forwarding of packets=
 between the simulated users and the external network via the GTP-U proto=
col.=E2=80=8B

Issue Encountered:
While using the TTCN-3/PGW test suite scripts that execute ping tests ins=
ide each created GTP tunnel, I observed the following on the osmo-uecups =
VM:=E2=80=8B
ICMP echo requests are successfully sent from the netns and are visible i=
n tcpdump captures both inside each netns and on the physical interfaces =
of the osmo-uecups VM.=E2=80=8B
ICMP echo replies are sent back by my PGW for each UE session, and I can =
see them when capturing traces on the physical interface of the osmo-uecu=
ps VM. However, these ICMP echo replies are not injected into each netns.=
 When capturing tcpdump inside each netns, I can see the ICMP echo reques=
ts but no corresponding replies.=E2=80=8B
This behavior results in ping test failures in the TTCN-3 test suite, as =
the echo replies do not reach the originating netns.=E2=80=8B

Additional Context:
Initially, when running the test suite, I encountered the following error=
 in the osmo-uecups-daemon logs:=E2=80=8B
DEP NOTICE X.X.X.X:2152: Unexpected GTP Flags: 0x32 (gtp_endpoint.c:59)=E2=
=80=8B
Upon investigation, I found that this was due to my PGW including a seque=
nce number in the GTP-U header, resulting in a flag value of 0x32.=E2=80=8B
To address this, I manually modified the gtp_endpoint.c file to accept th=
is flag. After this adjustment, the "Unexpected GTP Flags: 0x32" message =
no longer appears.=E2=80=8B
However, despite resolving this issue, the ping tests continue to fail be=
cause the ICMP echo replies are not being injected back into the respecti=
ve netns.=E2=80=8B
Additionally, I now receive the following message in the osmo-uecups-daem=
on log:=E2=80=8B
DEP NOTICE X.X.X.X:2152: Short GTP Message: 98 < len=3D96 (gtp_endpoint.c=
:74)=E2=80=8B

I would greatly appreciate any guidance or suggestions you can provide to=
 help resolve this issue.=E2=80=8B

Please find below the configuration changes I made in the gtp_endpoint.c =
file::
*************************************************************************=
*************
/* check GTP header contents */
if (gtph->flags !=3D 0x30 && gtph->flags !=3D 0x32) {
    LOGEP(ep, LOGL_NOTICE, "Unexpected GTP Flags: 0x%02x\n", gtph->flags)=
;
    continue;
}
//////////////////////////////
unsigned int hdr_len =3D sizeof(*gtph);
if (gtph->flags & 0x02) {
    hdr_len +=3D 2;  // Si le flag Sequence est activ=C3=A9
}

/* V=C3=A9rifie que la longueur totale attendue (header + payload) est pr=
=C3=A9sente */
if (hdr_len + ntohs(gtph->length) > nread) {
    LOGEP(ep, LOGL_NOTICE, "Shotr GTP Message: %u < len=3D%d\n",
          hdr_len + ntohs(gtph->length), nread);
    continue;
}

/* Transmission du payload au TUN device =C3=A0 partir de l'offset hdr_le=
n */
rc =3D write(outfd, buffer+hdr_len, ntohs(gtph->length));
*************************************************************************=
**********

Thank you for your time and assistance.=20

Best regards,
Imen Boufares
