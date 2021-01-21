Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 7A17A2FE7E6
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 21 Jan 2021 11:47:24 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 1A89019E588;
	Thu, 21 Jan 2021 10:47:20 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=tLaI9B5J
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::135; helo=mail-lf1-x135.google.com;
 envelope-from=morteza.ali.ahmadi@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by lists.osmocom.org (Postfix) with ESMTP id E86A919D641
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 21 Jan 2021 07:58:01 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id o13so1272379lfr.3
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 20 Jan 2021 23:58:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=TH074YV0HlbuG3tTalxQP5KgoJE0JcqqdoEtPojHXmA=;
 b=tLaI9B5JhbDDTJl0bHFTrgBWQOuCibqIAwIsgFjWtwvZYcqyGOp8mQj4EaNgP+mPOy
 kF0DENtqSb4MuHHjZ+GcEX9Hrki2bzDnuV57NXNbKbJuCzqsiKtWuiNf7kEhVZI6LsFS
 IeiA3sPBVYB7gNdjpyCMeb5W59BpS1z56Enb4TaV4Zvks0RJKzsIdFWcJZ6S+8rfX2+O
 Re/u9fADFxyQrjN8b3dYIjTsNy0/45mNwKCwvEQoVGaVoRaeaQHnha66kQPk0rMWA6zX
 3bJ+0G3pRSbtOLHtPuqpGY36g0FD1aC50uWMPS5iETw+XlFM04ThrsrRvnfPU5NCYur6
 MIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=TH074YV0HlbuG3tTalxQP5KgoJE0JcqqdoEtPojHXmA=;
 b=kq/fKbmccGpWk8ZEct+QY2291KOi2O/3b54r6TZoDFwAq4INrDMLf1jsnZUzTjoXsf
 2buV+Q11czZYzeaVQT5oX8sPXkM+SOEeVdv2QqMjr9tXBvnw9genGN+yDMzTyXG6OMD+
 k3dsZnNc07tT07QTTWY85Jkj0aShVlOUm4bb1rDBPf6OW8VgIob6bKLlHezt8nt7wZKh
 9fvV9JSHKpm2ymTGMSA6UBtlnNlDNeLkbnH/tsCBmYoK4DoVGhvjcJ7RXPk51jEzJfCl
 bGP9Yab7kELnaIeEO7+y6cvNdAo99MbltZchIzuYp8g1O3XuaSRfiQGpVaUPtxjayQqz
 uiXg==
X-Gm-Message-State: AOAM533/1dbpE7xgbx2MdTkmm8zbM4aZnKagEjl8bGWvotcRGkGBQ7rN
 aJKvk5Rrf2Hy6n7c32ZwJkKYcMllPKhNqxlsP14U7kHP3hdpnwUh
X-Google-Smtp-Source: ABdhPJxswKPnXj22tILGUN9xWEWPORlIKy/5IROBNjWGWcNgcg60OPPjGi8CutVXgsS+V/y8uogArCjVOodW53rMiGk=
X-Received: by 2002:a05:6512:333c:: with SMTP id
 l28mr5644831lfe.164.1611215880697; 
 Wed, 20 Jan 2021 23:58:00 -0800 (PST)
MIME-Version: 1.0
From: morteza ali Ahmadi <morteza.ali.ahmadi@gmail.com>
Date: Thu, 21 Jan 2021 11:27:49 +0330
Message-ID: <CANPQb9A9XbV9Y8-=n9aP3d7mZU0ijptkynLOp-x3fpQyUO7afw@mail.gmail.com>
Subject: Question about establishing an internet connection between MS and
 network core
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/mixed; boundary="00000000000039cd6605b9646e71"
X-Mailman-Approved-At: Thu, 21 Jan 2021 10:47:15 +0000
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

--00000000000039cd6605b9646e71
Content-Type: multipart/alternative; boundary="00000000000039cd6305b9646e6f"

--00000000000039cd6305b9646e6f
Content-Type: text/plain; charset="UTF-8"

Hi Osmocom team.
We are sorry to disturb you.
We have a question about establishing a stable internet connection
(IuPS_PS) between MS and our developed network core system using our home
nodeB (HNB).
We set *Primary DNS Address: 172.60.3.154 *(core IP) and *Secondary DNS
Address: 8.8.8.8* in *Activate PDP Context Accept.*
At this step, we can see the MS packets in the interface between HNB and
core using wireshark. The protocol is *GTP <DNS>* and the stacked layers
are *DNS / UDP / IP / GTP / UDP / IP* which I attached a screenshot of the
wireshark log.
As you can see in the attached image, our query in the MS is
*server.hnb* *(http://server.hnb
<http://server.hnb>)*. In order to show our default page to the user query,
we set up a DNS server and HTTP server (Apache) in 172.60.3.154 and *BIND9*
is configured as the primary server for the domain *server.hnb*. The
command *dig @localhost server.hnb* outputs the following:

; <<>> DiG 9.16.1-Ubuntu <<>> @localhost server.hnb
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 49532
;; flags: qr aa rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 15821f64047895870100000060070fb921a17af91fd22f9f (good)
;; QUESTION SECTION:
;server.hnb. IN A

;; ANSWER SECTION:
server.hnb. 604800 IN A 172.60.3.154

;; Query time: 0 msec
;; SERVER: 127.0.0.1#53(127.0.0.1)
;; WHEN: Jan 19 20:28:33 +0330 2021
;; MSG SIZE  rcvd: 83

and also when we query *http://server.hnb <http://server.hnb> *in the
browser of the core system (172.60.3.154), we see the * Apache2 Ubuntu
Default Page* but this default page is not shown in the MS.
Furthermore, we think that a GTP tunnel may be required and we set up a GTP
tunnel using *libgtpnl* and the two following commands:

gtp-link add gtp1
gtp-tunnel add gtp1 v1 1 100 10.250.0.114 172.60.3.154

where 1 is the gTP-TEI obtained in *RAB-Assignment Response *and 100 is the
similar field in *RAB-Assignment Request. *Also, 10.250.0.114 is the MS IP
and 172.60.3.154 is the core IP. But there is no captured package in this
tunnel (using wireshark).

Could you please help us to solve this problem which is mentioned in the
following questions?
Is the above procedure performed in the correct way?
We want to show our default page in MS when the user query is*
http://server.hnb <http://server.hnb>*, but we think that a GTP manager is
required to split the (( DNS / UDP / IP )) layers from (( DNS / UDP / IP /
GTP / UDP / IP )) to send to DNS server. How can it be solved, if this
assumption is correct?

Thank you again for spending time with us.
Best regards,
Morteza Ali Ahmadi


-- 
*When there is much light, The shadow is deep...*

--00000000000039cd6305b9646e6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Osmocom team. <br></div><div>We are sorry to distu=
rb you.</div><div>We have a question about establishing a stable internet c=
onnection=20
(IuPS_PS) between MS and our developed network core system using our=20
home nodeB (HNB). <br></div><div>We set <b>Primary DNS Address: 172.60.3.15=
4 </b>(core IP) and=C2=A0<b>Secondary DNS Address: 8.8.8.8</b> in <b>Activa=
te PDP Context Accept.</b></div><div>At this step, we can see the MS packet=
s=20
in the interface between HNB and core using wireshark. The protocol is <b>G=
TP &lt;DNS&gt;</b> and the stacked layers are <b>DNS / UDP / IP / GTP / UDP=
 / IP</b> which I attached a screenshot of the wireshark log.</div><div>As =
you can see in the attached image, our query in the MS is <b>server.hnb</b>=
 <b>(<a href=3D"http://server.hnb" target=3D"_blank">http://server.hnb</a>)=
</b>. In order to show our default page to the user query, we set up a DNS =
server and HTTP server (Apache) in 172.60.3.154 and <b>BIND9</b> is configu=
red as the primary server for the domain<code></code> <b>server.hnb</b>. Th=
e command <b>dig @localhost server.hnb</b>  outputs the following:</div><di=
v><br></div><div>; &lt;&lt;&gt;&gt; DiG 9.16.1-Ubuntu &lt;&lt;&gt;&gt; @loc=
alhost server.hnb<br>; (1 server found)<br>;; global options: +cmd<br>;; Go=
t answer:<br>;; -&gt;&gt;HEADER&lt;&lt;- opcode: QUERY, status: NOERROR, id=
: 49532<br>;; flags: qr aa rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITI=
ONAL: 1<br><br>;; OPT PSEUDOSECTION:<br>; EDNS: version: 0, flags:; udp: 40=
96<br>; COOKIE: 15821f64047895870100000060070fb921a17af91fd22f9f (good)<br>=
;; QUESTION SECTION:<br>;server.hnb.			IN	A<br><br>;; ANSWER SECTION:<br>se=
rver.hnb.		604800	IN	A	172.60.3.154<br><br>;; Query time: 0 msec<br>;; SERV=
ER: 127.0.0.1#53(127.0.0.1)<br>;; WHEN: Jan 19 20:28:33 +0330 2021<br>;; MS=
G SIZE =C2=A0rcvd: 83<br></div><div><br></div><div>and also when we query <=
b><a href=3D"http://server.hnb" target=3D"_blank">http://server.hnb</a> </b=
>in the browser of the core system (172.60.3.154), we see the <span><b>
          Apache2 Ubuntu Default Page</b> but this default page is not show=
n in the MS.</span></div><div><span>Furthermore, we think that a GTP tunnel=
 may be required and we set up a GTP tunnel using <b>libgtpnl</b> and the t=
wo following commands:</span></div><div><span><br></span></div><div><span>g=
tp-link add gtp1</span></div><div><span>gtp-tunnel add gtp1 v1 1 100 10.250=
.0.114 172.60.3.154</span></div><div><span><br></span></div><div><span>wher=
e 1 is the gTP-TEI obtained in <b>RAB-Assignment Response </b>and 100 is th=
e similar field in <b>RAB-Assignment Request. </b>Also, 10.250.0.114 is the=
 MS IP and 172.60.3.154 is the core IP.</span><span lang=3D"en"><span><span=
> But there is no captured package in this tunnel (using wireshark).</span>=
</span></span></div><div><br></div><div>Could you please help us to solve t=
his problem which is mentioned in the following questions?<br></div><div>Is=
 the above procedure performed in the correct way?<br></div><div>We want to=
 show our default page<span lang=3D"en"><span><span></span></span></span><s=
pan></span> in MS when the user query is<b> <a href=3D"http://server.hnb" t=
arget=3D"_blank">http://server.hnb</a></b>,
 but we think that a GTP manager is required to split the (( DNS / UDP /
 IP )) layers from (( DNS / UDP / IP / GTP / UDP / IP )) to send to DNS=20
server.<span lang=3D"en"><span><span> How can it be solved, if this assumpt=
ion is correct?</span></span></span></div><div><br></div><div>Thank you aga=
in for spending time with us.<font color=3D"#888888"><br></font></div><div>=
Best regards,</div><div>Morteza Ali Ahmadi</div><br clear=3D"all"><br>-- <b=
r><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr"><span style=3D"font-family:courier new,monospace"><sp=
an style=3D"background-color:rgb(255,255,255)"><b><font size=3D"3">When the=
re is much light, The shadow is deep...</font></b></span></span></div></div=
></div>

--00000000000039cd6305b9646e6f--

--00000000000039cd6605b9646e71
Content-Type: image/png; name="log.png"
Content-Disposition: attachment; filename="log.png"
Content-Transfer-Encoding: base64
Content-ID: <f_kk6jrej90>
X-Attachment-Id: f_kk6jrej90

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
09NdXR08PHysrNQ01DSk8/v7nZOXV/phsbt3S6TczqqqqrgReWV2Zna/meVeabn5Gbq7u75+/SK4
+W/lQ0tT19bWnIeXF1I6i4sf6OkZAQBYWFbp6hhdvXYZAPDlS09KalIZpkRFBR0bk7w4psW/DUt8
L9raWjs622Vl5AEAAvwbZGUV3uPH/0Xw9XU3MDDW1tbHYrGycuIklULG0bljFfjFpfLy0qKigpjo
W0gkMiExpqP9Az4/5AP6pyuBcWxRCYSdDgwMeFWyr69vzihF4JVR/HF/NjZ2CgpKaF/W4nKoqan+
qcfTyckpFRTkvml+jVbT/ImuxuFwoaEXLS1to2NuSEvLIpFIYg1YvXq1m6v31q2iv4utAID29vet
be+ioq7jo9hVVGC05/ZyL4aEhJSEhNTo6Gh4eHBERLiHhx/banYTE3NoylsAKiqqBSmSEtJBQb5t
ba1l5aXxcbd/SNeC3v4tgOJDAgBGRkaYmJjJKjIZP42lrl3Q0dHeTkl88CAPANDZ2dHYWL9BYAMA
4HZKUmxsFBaL/fixOzs7U1paFgCgoKCSfCt+cnKyo6O9pLRQQUEFACArq/D8xbPGxvrZ2dnU1Fvi
4pIAgImJcXePU36+Z0mYFsRq5+DgnJ2dgSKr9vX1vn79SkBgIwBAFaWenpHS3983NDR4/362+G5J
0qRVPapEq8njz3WdPu31oKAC2qa5cePm8+dC5OQUVVTUioseQom6uoamJhaQ6kOwLoKUKigo5+fn
fvr0cXx87HZKkrKSKmQ1odXkuru7JiYmIiLCIXWfILGzs7NQOMvnz2s7Ozv6+/sg+2fpoKen//PP
XUm34rFYbHl56fDIsKjodvy/dvbWMbGR+J+vX79KuhUXGhKBNy0AAD2fP59ycezs7MBisfHx0evX
87Ozc+zYsau7u6um5tHs7Gx8fLS0tAw1NTXec4ZWk4ciYEIgKBgQIiLCoSN3ywUx1qxgvH37RkBg
w/yUO3eSx8fH3Nx8Fk/5CzqWm5uHj29dWvptHA6XlZW2houbjW31spj44kVtdHTEzMzM6Oho5cNy
6KVbOhMJStFKZSIjI5OCgnJY+KXBwcHe3q+dXR2/q2QYDCYtLXsjIu6E0+miwoL5K7Td3Z2BQT7K
SqrMzCzzdC/2TZsFX79+BQCgpqaJunn93r0MLBY7NTVVVFwgLLwNABAWHszFuSYl5a6dnQPZtAAA
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
oSVVGJwAAAAASUVORK5CYII=
--00000000000039cd6605b9646e71--
