Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 501857137EE
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 28 May 2023 08:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 060FF282B7;
	Sun, 28 May 2023 06:03:49 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2_qX-RLYj29; Sun, 28 May 2023 06:03:48 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 52D85282B1;
	Sun, 28 May 2023 06:03:45 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D67D338A0FA2;
	Sat, 20 May 2023 20:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A6CBE2818C;
	Sat, 20 May 2023 20:37:44 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Beuq3G-1HXQe; Sat, 20 May 2023 20:37:43 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by mail.osmocom.org (Postfix) with ESMTPS id 2D39B2812E;
	Sat, 20 May 2023 20:37:42 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1ae557aaf1dso38687395ad.2;
        Sat, 20 May 2023 13:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684615061; x=1687207061;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=S3fiKlE51wKd8iID2L43H3TYnzsKd/OhrcFVO172ADY=;
        b=CNhdYnhcbZhxsVr8CdSrMwDGtiAeEq4oZtmTfKrX82Hirz6dxJv7Y4gcFKUvJKqang
         F5eZzFzd6zVuVndlwqzop/4yLilpGEONjkiApwrbknoDMd/4BiaFrTooRdz8Tw1W/Axf
         ADtJ0ziRM5TmeoDwIX3Z8h6sSBeCDUjksj2I02qENYIsQe8thAOij+8twtBYy0BxdVX+
         i6UJJkbQO8mtzo9jeVoVEi9OH8cnkAz02gRofePCEuhaJHM0EeeeVb085iwW6hQLqBBt
         b5lAfpNRS+qO9dpLDKmBGJhG+DfqDxt93VMiSayIw4gyielKsN4Zgz8PfxOQ7cFTYktw
         QhMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684615061; x=1687207061;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S3fiKlE51wKd8iID2L43H3TYnzsKd/OhrcFVO172ADY=;
        b=kqmP/W0x4hjVX+S+hTyyWxZGEkKzTOTC2a9Ll2dD9On8LD4J9duvUAMlXaBS7jLi+r
         FNk5Nk9nlDBS7iQZ4SvKZoA1H4/ww3ZOGwEQCeV/meDIlRW7dQtDFGSTxalzMUiOYZWI
         6lGhc2MOO7OTr88SWOx1rTbClAm/Cf7yiEx3WUAp3z4SR0p7PdIRiTN3+tJMAqTdgTeP
         LREWMFMFzdhSuMdFLuDBKZAa5BW3+sYUhOwS/dfpRwQvG8zbYn8woH/6TSz1v30SB/5S
         +8hj4W5qpz+QBLiunqBDExw1Lt1UPlAPGP2h1eEqJ+LWL5PTtnPv62NluhY85NP3smdv
         qQAg==
X-Gm-Message-State: AC+VfDwvhgaV1nWpTp8VkYEXTb8cvqbtUU3e2Vt2Sl2yOxqqT3WGxG9S
	yF2i9RbJ9qtYYSfPw+OuYl6wlIho16yax7/idIQqH+qQ9HsbFw==
X-Google-Smtp-Source: ACHHUZ6crt0f4oOSs6t33gUxU49MjEoyF9Ki7Rf2sQ0pqN7zR/6nrGwscfV7MPbHO8ZIyDzBrbp+rriOhhPwYsRvimM=
X-Received: by 2002:a17:902:9a03:b0:1a8:1320:133 with SMTP id
 v3-20020a1709029a0300b001a813200133mr6484656plp.51.1684615060884; Sat, 20 May
 2023 13:37:40 -0700 (PDT)
MIME-Version: 1.0
References: <CANV1quToJQtZoQxnJ5uDNh5H43V02oNdQ_GZdKXfNXic8h+vOg@mail.gmail.com>
 <20230520134206.37988d79@javelin>
In-Reply-To: <20230520134206.37988d79@javelin>
From: Ahnaf Tahmid <tahmid.nse@gmail.com>
Date: Sun, 21 May 2023 02:37:29 +0600
Message-ID: <CANV1quQ_SDL7uWD7ZApGe9OOjUiO1pZfcYwAs++6mcRvu0gTKw@mail.gmail.com>
Subject: Re: Request for Assistance with GPRS Configuration
To: "Alexander 'lynxis' Couzens" <lynxis@fe80.eu>
Content-Type: multipart/alternative; boundary="0000000000004991f805fc26028b"
X-MailFrom: tahmid.nse@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BGIDTF7F4BODLZAFEMP3F7I3ENLXYWUC
X-Message-ID-Hash: BGIDTF7F4BODLZAFEMP3F7I3ENLXYWUC
X-Mailman-Approved-At: Sun, 28 May 2023 06:03:43 +0000
CC: osmocom-net-gprs@lists.osmocom.org, openbsc@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/BGIDTF7F4BODLZAFEMP3F7I3ENLXYWUC/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

--0000000000004991f805fc26028b
Content-Type: text/plain; charset="UTF-8"

Hi Lynxis,

Thank you for your response and suggestions. Regarding my current network
setup, I am using a b200 device to connect my Android phone to the osmobts
network. I am able to establish roaming connections successfully, and I can
make and receive calls as well as send and receive SMS.
However, I am encountering an issue with the network connection for data
services. I am not able to connect to the E (EDGE) or G (GPRS) networks.
Despite being in a coverage area, my phone does not receive an IP address
for data services. It seems that the GPRS/EDGE setup is not functioning
properly.
I have checked the configuration files and made the necessary adjustments
based on your recommendations. I have also reviewed the tun.network file
and corrected the device name to "tun4". However, I am still experiencing
difficulties.

To provide more information, here are some specific questions:

Can my mobile phone successfully connect to the network for voice calls and
SMS?
Yes, I can make and receive voice calls and send/receive SMS without any
issues.
Is the Circuit-Switched (CS) functionality, such as location update,
working properly?
Yes, the CS functionality, including location update, is working as
expected.
Is the Packet-Switched (PS) functionality, such as routing area update,
working properly?
No, the PS functionality, including routing area update, is not working. I
am unable to establish a network connection for data services.
Is my phone receiving an IP address for data services (PDP Context)?
No, my phone is not receiving an IP address for data services.
Have I checked for network traffic using tcpdump -i tun4 -vn?
Yes, I have checked for network traffic using the mentioned command, and I
have got this:
tcpdump: listening on tun4, link-type EN10MB (Ethernet), snapshot length
262144 bytes

Unfortunately, I do not have a pcap trace available at the moment. If
necessary, I can provide additional information or logs to assist with
troubleshooting.
Thank you for your continued support.

Log:

   - osmo-hlr
   <https://docs.google.com/document/d/1TIj80mQmVUCgFyDyW58E0GdT2ebzkRmlwXuM1xCilZQ/edit?usp=sharing>
   - osmo-msc
   <https://docs.google.com/document/d/1sByzVEQ-sk7InhWPyaI3LIo5Ws7UuL_99gds1ZDLBCM/edit?usp=sharing>
   - osmo-bsc
   <https://docs.google.com/document/d/1mFRtjnOfecCFZSmAaA22GA_EM28rB59dIjftM_UXmPc/edit?usp=sharing>
   - osmo-sgsn
   <https://docs.google.com/document/d/1r3VfTNPlb-9XWU8FWfALh5kRr9502WgrSMuYXkqHrE0/edit?usp=sharing>
   - osmo-ggsn
   <https://docs.google.com/document/d/13aAEeM22w5gutpmSRmLoIGq1eE8COJF4rrQ4-NF49zY/edit?usp=sharing>
   - osmo-pcu
   <https://docs.google.com/document/d/1YZXZqG4vefV5kSviKLbgopmUBCTSSPzzKBxeJt28vLY/edit?usp=sharing>
   - osmo-stp
   <https://docs.google.com/document/d/1ePZ-CAlqjxs1mv4BYaNsUIBxeW3UWDZKqB-edpYu_oU/edit?usp=sharing>
   - osmo-bts-trx
   <https://docs.google.com/document/d/1jWDZvGJzqCPiGEiHw2Itu80bM3LePrsaVQ5koPkfGN8/edit?usp=sharing>
   - osmo-trx-uhd
   <https://docs.google.com/document/d/1vliUJ6nzt3f9o4VGlyY3ZvqNDyj-go96ZM3hDqtBw3w/edit?usp=sharing>


Best regards,
Tahmid

On Sat, 20 May 2023 at 16:42, Alexander 'lynxis' Couzens <lynxis@fe80.eu>
wrote:

> Hi Ahnaf,
>
> the structure of osmocom have changed since the manual has been written.
> The manual is written for the long outdated osmo-nitb (a combined BSC,MSC).
>
> > I have noticed that the wiki page for OpenBSC GPRS at
> > https://osmocom.org/projects/cellular-infrastructure/wiki/OpenBSC_GPRS
> has
> > not been updated for four years, and since then, there have been
> > significant updates to the software. As a result, the information on the
> > GPRS/EDGE Setup page may be outdated, and I am struggling to configure
> GPRS
> > on my system.
> >
> > I have attached my configuration files below for your review.
>
> I would recommend to take a look into the
> https://osmocom.org/projects/cellular-infrastructure/wiki/Osmocom_Network_In_The_Box
> But you already have configuration files for bsc, msc, sgsn, ggsn.
>
> I would also recommend you to add an IP for every core network component
> and ran.
> Because it helps debugging to have the IPs seperate.
> For a local network (everything runs on the same host) I would do:
>
> * 127.0.0.10 bts + pcu
> * 127.0.0.11 bsc + bsc-mgw (yes running mgw twice)j
> * 127.0.0.12 msc + osmo-sip-connector + msc-mgw
> * 127.0.0.13 sgsn
> * 127.0.0.14 ggsn
> * 127.0.0.15 sip-server (e.g. asterix, ...)
> * 127.0.0.16 hlr
> You will need to change vty and ctrl interface ips as well.
>
>
> Back to your current network.
> Are you running osmo-stp? osmo-stp is required for the new network.
>
> Ok. but what is not working? Please add more information!
>
> - Can your MS/UE connect to the network?
>  - CS: location update works?
>  - PS: routing area update works?
> - Does your phones gets an IP? (PDP Context)
> - Does `tcpdump -i tun4 -vn` shows any traffic?
>
> Do you have a pcap trace? (Best to upload it to a website and only send
> the link on this mailinglist)
>
> Your tun.network file looks wrong. The device should be named tun4 and the
> IP range is also wrong.
> Personally I wouldn't use systemd-networkd for this.
> At least I would expect routing issues. Also I wonder why there isn't a
> tun4 device.
>
> Even if there is a tun4 device, you might missing the routing and
> depending on your setup, NAT/masquerading.
> I think you would need to run `ip route add 172.16.222.0/24 dev tun4`
> and `iptables -t nat -A POSTROUTING -j MASQUERADE -s 172.16.222.0/24 -o
> wlp1s0`
>
> Best,
> lynxis
>

--0000000000004991f805fc26028b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Lynxis,<br><br>Thank you for your response and suggesti=
ons. Regarding my current network setup, I am using a b200 device to connec=
t my Android phone to the osmobts network. I am able to establish roaming c=
onnections successfully, and I can make and receive calls as well as send a=
nd receive SMS.<br>However, I am encountering an issue with the network con=
nection for data services. I am not able to connect to the E (EDGE) or G (G=
PRS) networks. Despite being in a coverage area, my phone does not receive =
an IP address for data services. It seems that the GPRS/EDGE setup is not f=
unctioning properly.<br>I have checked the configuration files and made the=
 necessary adjustments based on your recommendations. I have also reviewed =
the tun.network file and corrected the device name to &quot;tun4&quot;. How=
ever, I am still experiencing difficulties.<br><br>To provide more informat=
ion, here are some specific questions:<br><br>Can my mobile phone successfu=
lly connect to the network for voice calls and SMS?<br><font color=3D"#3876=
1d">Yes, I can make and receive voice calls and send/receive SMS without an=
y issues.<br></font>Is the Circuit-Switched (CS) functionality, such as loc=
ation update, working properly?<br><font color=3D"#38761d">Yes, the CS func=
tionality, including location update, is working as expected.<br></font>Is =
the Packet-Switched (PS) functionality, such as routing area update, workin=
g properly?<br><font color=3D"#ff9900">No, the PS functionality, including =
routing area update, is not working. I am unable to establish a network con=
nection for data services.<br></font>Is my phone receiving an IP address fo=
r data services (PDP Context)?<br><font color=3D"#ff9900">No, my phone is n=
ot receiving an IP address for data services.<br></font>Have I checked for =
network traffic using tcpdump -i tun4 -vn?<br>Yes, I have checked for netwo=
rk traffic using the mentioned command, and I have got this: <br>tcpdump: l=
istening on tun4, link-type EN10MB (Ethernet), snapshot length 262144 bytes=
<br><br><div>Unfortunately, I do not have a pcap trace available at the mom=
ent. If necessary, I can provide additional information or logs to assist w=
ith troubleshooting.<br>Thank you for your continued support.<br><br>Log:</=
div><div><ul><li><a href=3D"https://docs.google.com/document/d/1TIj80mQmVUC=
gFyDyW58E0GdT2ebzkRmlwXuM1xCilZQ/edit?usp=3Dsharing">osmo-hlr</a></li><li><=
a href=3D"https://docs.google.com/document/d/1sByzVEQ-sk7InhWPyaI3LIo5Ws7Uu=
L_99gds1ZDLBCM/edit?usp=3Dsharing">osmo-msc</a></li><li><a href=3D"https://=
docs.google.com/document/d/1mFRtjnOfecCFZSmAaA22GA_EM28rB59dIjftM_UXmPc/edi=
t?usp=3Dsharing">osmo-bsc</a></li><li><a href=3D"https://docs.google.com/do=
cument/d/1r3VfTNPlb-9XWU8FWfALh5kRr9502WgrSMuYXkqHrE0/edit?usp=3Dsharing">o=
smo-sgsn</a></li><li><a href=3D"https://docs.google.com/document/d/13aAEeM2=
2w5gutpmSRmLoIGq1eE8COJF4rrQ4-NF49zY/edit?usp=3Dsharing">osmo-ggsn</a></li>=
<li><a href=3D"https://docs.google.com/document/d/1YZXZqG4vefV5kSviKLbgopmU=
BCTSSPzzKBxeJt28vLY/edit?usp=3Dsharing">osmo-pcu</a></li><li><a href=3D"htt=
ps://docs.google.com/document/d/1ePZ-CAlqjxs1mv4BYaNsUIBxeW3UWDZKqB-edpYu_o=
U/edit?usp=3Dsharing">osmo-stp</a></li><li><a href=3D"https://docs.google.c=
om/document/d/1jWDZvGJzqCPiGEiHw2Itu80bM3LePrsaVQ5koPkfGN8/edit?usp=3Dshari=
ng">osmo-bts-trx</a></li><li><a href=3D"https://docs.google.com/document/d/=
1vliUJ6nzt3f9o4VGlyY3ZvqNDyj-go96ZM3hDqtBw3w/edit?usp=3Dsharing">osmo-trx-u=
hd</a></li></ul><br>Best regards,<br>Tahmid</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, 20 May 2023 at 16:=
42, Alexander &#39;lynxis&#39; Couzens &lt;<a href=3D"mailto:lynxis@fe80.eu=
">lynxis@fe80.eu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi Ahnaf,<br>
<br>
the structure of osmocom have changed since the manual has been written.<br=
>
The manual is written for the long outdated osmo-nitb (a combined BSC,MSC).=
<br>
<br>
&gt; I have noticed that the wiki page for OpenBSC GPRS at<br>
&gt; <a href=3D"https://osmocom.org/projects/cellular-infrastructure/wiki/O=
penBSC_GPRS" rel=3D"noreferrer" target=3D"_blank">https://osmocom.org/proje=
cts/cellular-infrastructure/wiki/OpenBSC_GPRS</a> has<br>
&gt; not been updated for four years, and since then, there have been<br>
&gt; significant updates to the software. As a result, the information on t=
he<br>
&gt; GPRS/EDGE Setup page may be outdated, and I am struggling to configure=
 GPRS<br>
&gt; on my system.<br>
&gt; <br>
&gt; I have attached my configuration files below for your review.<br>
<br>
I would recommend to take a look into the <a href=3D"https://osmocom.org/pr=
ojects/cellular-infrastructure/wiki/Osmocom_Network_In_The_Box" rel=3D"nore=
ferrer" target=3D"_blank">https://osmocom.org/projects/cellular-infrastruct=
ure/wiki/Osmocom_Network_In_The_Box</a><br>
But you already have configuration files for bsc, msc, sgsn, ggsn.<br>
<br>
I would also recommend you to add an IP for every core network component an=
d ran.<br>
Because it helps debugging to have the IPs seperate.<br>
For a local network (everything runs on the same host) I would do:<br>
<br>
* 127.0.0.10 bts + pcu<br>
* 127.0.0.11 bsc + bsc-mgw (yes running mgw twice)j<br>
* 127.0.0.12 msc + osmo-sip-connector + msc-mgw<br>
* 127.0.0.13 sgsn<br>
* 127.0.0.14 ggsn<br>
* 127.0.0.15 sip-server (e.g. asterix, ...)<br>
* 127.0.0.16 hlr<br>
You will need to change vty and ctrl interface ips as well.<br>
<br>
<br>
Back to your current network.<br>
Are you running osmo-stp? osmo-stp is required for the new network.<br>
<br>
Ok. but what is not working? Please add more information!<br>
<br>
- Can your MS/UE connect to the network?<br>
=C2=A0- CS: location update works?<br>
=C2=A0- PS: routing area update works?<br>
- Does your phones gets an IP? (PDP Context)<br>
- Does `tcpdump -i tun4 -vn` shows any traffic?<br>
<br>
Do you have a pcap trace? (Best to upload it to a website and only send the=
 link on this mailinglist)<br>
<br>
Your tun.network file looks wrong. The device should be named tun4 and the =
IP range is also wrong.<br>
Personally I wouldn&#39;t use systemd-networkd for this.<br>
At least I would expect routing issues. Also I wonder why there isn&#39;t a=
 tun4 device.<br>
<br>
Even if there is a tun4 device, you might missing the routing and depending=
 on your setup, NAT/masquerading.<br>
I think you would need to run `ip route add <a href=3D"http://172.16.222.0/=
24" rel=3D"noreferrer" target=3D"_blank">172.16.222.0/24</a> dev tun4`<br>
and `iptables -t nat -A POSTROUTING -j MASQUERADE -s <a href=3D"http://172.=
16.222.0/24" rel=3D"noreferrer" target=3D"_blank">172.16.222.0/24</a> -o wl=
p1s0`<br>
<br>
Best,<br>
lynxis<br>
</blockquote></div>

--0000000000004991f805fc26028b--
