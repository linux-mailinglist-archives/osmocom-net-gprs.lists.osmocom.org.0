Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 1A1AB903F0
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 16 Aug 2019 16:27:47 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 00FC0CBCDB;
	Fri, 16 Aug 2019 14:27:38 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=OpWCFxSW
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2a00:1450:4864:20::336; helo=mail-wm1-x336.google.com;
 envelope-from=chiefy.padua@gmail.com;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by lists.osmocom.org (Postfix) with ESMTP id 17BDACBCA9
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 16 Aug 2019 14:27:18 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id 10so4211123wmp.3
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 16 Aug 2019 07:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xFABB94Fr4nWd6sVjRaAiIykBerEqO8Jihli5FfrCJo=;
 b=OpWCFxSW36s8gn4gXrYwe/E7tXII9IISrWef3qq4xIb936mVAyzQw4USwHeE2gD+PO
 F1XIVEejK6PdUlkVg9gGGif+QFotF0Uw3/ALimVoxGP5tPjO2gK+H8i0DdHDVSBe2uML
 m+PzOxsjXA36rNjHyounbo5C6ft+L10NG+1tUISMN+tZNhJnpq6CMDuxlCzKI2ggsYFB
 EGB3Or33JJDdboJ1+aiQwWDiLpdJWtW3k06l9JKJ+9LeZ5L8g+4FXyBU7AYaciGUriq2
 B3e3hHPKA265wkJcbEsjTK9k+52MqunpBkeJXU6VtIB+xSxYcVf/AMyR2JoH87Chx7uV
 PWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xFABB94Fr4nWd6sVjRaAiIykBerEqO8Jihli5FfrCJo=;
 b=UoDY3IeJ1lnwWljybZjp6dLyebDzizL8lsdqCzFtwB7kD+IdVhX1HK2L0jdstTDKWE
 xeijNpCtoqftmjB3A4qNL31NY4XPW3dADu8jsII9KDhPUq9EkumB2WjZCkyff1Qj8Goh
 cyRDH+RBs5ZcLuHihKnjZqIRh1JK2kYNWqDDqYPYJpifByKE9IV9STzdkNjdDCAQ3162
 dexD0xMfBHMSqfnfG9NlYxB5MgJRmMBcVrkV6YEALdtYUsh5wSQvknT3DsDhAUMJO4kL
 LzjLSy6/yjjhft65JnBcld434JmZj/BVbDryOshY71qr0udae6mF825aGAAByU+qO3Qs
 6xGg==
X-Gm-Message-State: APjAAAVtrgluGU+SMAxZ1/R1nOY2c3RlN8FqJcr4AeObwbUbguigRTn7
 6yj7Qahnqr+qJKSRJQYMUSyK4QSimpvRpfd0bmu6OXTF
X-Google-Smtp-Source: APXvYqzTRIa2FUBXMNjU3GlVT+TiX9EzUw/sWJQxSihb5l55jXPsnn6epNHHzksu63dZDZTEibVSTOodssd4C814Ld4=
X-Received: by 2002:a1c:dd43:: with SMTP id u64mr7637805wmg.92.1565965638360; 
 Fri, 16 Aug 2019 07:27:18 -0700 (PDT)
MIME-Version: 1.0
References: <CA+dJ=bxPunvB4GOV5gwUdSf+PPkukNkwhVD=NAr5y2i5a4Gj3w@mail.gmail.com>
 <CAA5f=PhaeiKt_in-D9Tj+3uor7La4EKjK37FbfPJS7xdUAOugw@mail.gmail.com>
In-Reply-To: <CAA5f=PhaeiKt_in-D9Tj+3uor7La4EKjK37FbfPJS7xdUAOugw@mail.gmail.com>
From: Tony Clark <chiefy.padua@gmail.com>
Date: Fri, 16 Aug 2019 15:27:06 +0100
Message-ID: <CA+dJ=bzUhJh8oYAua4bjRLhShCRGyB=7HiX3dhHEhQb4Mw7GOg@mail.gmail.com>
Subject: Re: high ksoftirqd while using module gtp?
To: =?UTF-8?B?ZsSxcmF0IHPDtm5tZXo=?= <firatssonmez@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000009ae42105903cc98b"
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
Cc: osmocom-net-gprs@lists.osmocom.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

--0000000000009ae42105903cc98b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Firstly I would like to say great thanks Firat for the reply, it certainly
put me on a different investigation path. And apologies for not replying
sooner. I wanted to make sure it was the correct path before I replied back
to the group with the findings and associated solution.


If the GTP-U connection is connecting to the PG-W with a single IP at
(src/dst) each side, and UDP flow has isn't been enabled on the network
card of the host using gtp.ko in the kernel all the associated network
traffic will be received on a single queue on the network, which is then
serviced by a single ksoftirq thread. at somepoint the system will be
receiving more traffic than there is available thread space to service the
request, your ksoftirq will burn at 100%. That means all your traffic will
be bound to a single network queue, bound to a single irq thread, and limit
your overall throughput, no matter how big your network pipe is.

This is because the network card hashed the packet via
SRC_IP:SRC_PORT:DEST_IP:DEST_PORT:PROTO to a single queue.

# take note on the discussions about udp-flow-hash udp4 using ethtool

https://home.regit.org/tag/performance/

https://www.joyent.com/blog/virtualizing-nics

https://www.serializing.me/2015/04/25/rxtx-buffers-rss-others-on-boot/


You can check if your card supports adjustable parameters by using "ethtool
-k DEV | egrep -v fixed". As firat eludes to (below) udp flow hashing
should be supported.

If you enabled UDP flow hash then it will spread the hash over multiple
queues. The default number of queues on the network card can vary,
depending on your hardware firmware driver, and any additional associated
kernel parameters.

Would recommend having the latest firmware driver for your network card,
and latest kernel driver for the network card if possible.

Alas the network cards used by my hardware didn't support flow hash, it had
intel flow director, which wasn't granular enough and worked with TCP, so
to work around this limitation having multiple SRC_IPs in different name
spaces with the same GTP UDP PORT numbers resolved the problem. Of course
if you are sending GTP-U to a single destination from multiple sources (say
6 IP's), via 6 different kernel name spaces, you spread the load over 6
queues, which is better than nothing on a limited feature network card.
Time to upgrade the 10G network card....

This took the system from 100% ksoftirq on a single cpu running at
throughput 1G, to around 7 to 8GIG throughput at 90% ksoftirq over multiple
cpu;s... There is still massive room for improvement.



For performance some things to investigate/consider... Which I had
different levels of success... Here are my ramblings.....

on the linux host... Assuming your traffic is now spread across multiple
queues (above) - or at least spread as best as can be...

Kernel sysctl tweaking is always of benefit, if your using out of the box
kernel config... Example udp buffers, queue sizes, paging and virtual
memory settings...  There is a application called "tuned", which allows you
to adjust profiles for the kernel sysctl... My performance profile which
suited the testing best was "throuhput-performance"

if your looking for straight performance, disable audit processing like
"auditd".

Question use of SELINUX, enforcing/permissive or disabled. can bring
results on performance, if you doing testing or load testing... ofcourse
its a security consideration..

If you don't need to use ipfilters/firewall in my case can increase the
throughput by a 3rd by disabling (cleaning the filter tables and unloading
the modules). Black listing the modules so they dont get loaded at kernel
time. Note you can stop modules getting loaded with
kernel.modules_disabled=3D1, but be careful if your also messing with
initramfs rebuilds, because you don't get any modules once your set that
parameter, i learnt the hard way :)

Investigate smp_affinity and affinity_hint, along with irqbalane using the
--hintpolicy=3Dexact. understand which irq's service the network cards, and
how many queues you have.. /proc/interrupts will guide you (grep 'CPU|rxtx'
/proc/interrupts)... understand the smp_affinity numbers.. "for
((irq=3DSTART_IRQ; irq<=3DEND_IRQ; irq++)); do    cat
/proc/irq/$irq/smp_affinity;     done | sort =E2=80=93u", as you can adjust=
 which
queue goes to which ksoftirq to manually balance the queues if you so
desire. brilliant document on irq debugging....
https://events.static.linuxfound.org/sites/events/files/slides/LinuxConJapa=
n2016_makita_160714.pdf


you can monitor what calls are been executed on cpu's by using... I found
this most useful to understand that ipfilter was eating a significant
amount of CPU cycles, and also what other calls are eating up cycles inside
ksoftirq. https://github.com/brendangregg/FlameGraph

Investigate additional memory management using numactl (numa daemon).
remember if you are using virtualisation you might want to pin guests to
specific sockets, along with numa pinning on the vmhost.. Also look at
reserved memory allocation in the vmhost for the guest... This will make
your guest perform better.

enable sysstat (sar) as it will aid your investigation if you havent
already (sar -u ALL -P ALL 1). This will show which softirqs are eating
most cpu and to which cpu they are bound, this also translates directly to
the network queue that the traffic is coming in on.. Ie, network card queue
6, talks to cpu/6 talking to irq/6 and so on... Using flamegraph will help
you understand what syscalls and chewing the CPU..

If your using virtualisation then the number of default queues that vxnet
(vmware in this example) presents to the guest might be less than the
number of network card queues the vmhost sees (so watch out for that). You
can adjust the number of queues to the guest by params in the vmware
network driver... investigate VDMQ / netqueue, to increase the number of
available hardware queues from the vmhost to the guest. depending which
quest driver your using vxnet3, or others some drivers dont support NAPI
(see further down).

*  VMDQ: array of int*

*    Number of Virtual Machine Device Queues: 0/1 =3D disable, 2-16 enable
(default=3D8)*

*  RSS: array of int*

*    Number of Receive-Side Scaling Descriptor Queues, default 1=3Dnumber o=
f
cpus*

*  MQ: array of int*

*    Disable or enable Multiple Queues, default 1*

  Node: array of int

    set the starting node to allocate memory on, default -1

*  IntMode: array of int*

*    Change Interrupt Mode (0=3DLegacy, 1=3DMSI, 2=3DMSI-X), default 2*

*  InterruptType: array of int*

*    Change Interrupt Mode (0=3DLegacy, 1=3DMSI, 2=3DMSI-X), default IntMod=
e
(deprecated)*

Make sure your virtual switch (vmware) if used has Pass-through
(Direct-path I/O) enabled. NIC teaming policy should be validated depending
on your requirement, example Policy "route based on IP hash" can be of
benefit.

Check the network card is MSI-X, and the linux driver supports NAPI (most
should these days, but you never know), also check your vmhost driver
supports napi, if not get a NAPI supported kvm driver, or vmware driver
(vib update).

Upgrade your kernel, to a later release 4.x.. even consider using a later
distro of linux... I tried fedora 29. I also compiled latest osmocom from
source, with compile options for "optimisation -O3 and other such".

"bmon -b" was a good tool understand throughput loads, along with loading
through qdisc/fq_dodel mq's.... Understand qdisc via ip link or ifconfig (
http://tldp.org/HOWTO/Traffic-Control-HOWTO/components.html), adjusting the
queues has some traction, but if unsure leave as default.

TSO/UFo?GSO/LRO/GRO - understand your network card with respects to these,
this can improve performance if you haven't already enabled (or adversely
disabled options, since sometimes it doesn't actually help). You can get
the your card options using ethool

TCP Segmentation Offload (TSO)

    Uses the TCP protocol to send large packets. Uses the NIC to
handle segmentation, and then adds the TCP, IP and data link layer
protocol headers to each segment.

UDP Fragmentation Offload (UFO)

    Uses the UDP protocol to send large packets. Uses the NIC to
handle IP fragmentation into MTU sized packets for large UDP
datagrams.

Generic Segmentation Offload (GSO)

    Uses the TCP or UDP protocol to send large packets. If the NIC
cannot handle segmentation/fragmentation, GSO performs the same
operations, bypassing the NIC hardware. This is achieved by delaying
segmentation until as late as possible, for example, when the packet
is processed by the device driver.

Large Receive Offload (LRO)

    Uses the TCP protocol. All incoming packets are re-segmented as
they are received, reducing the number of segments the system has to
process. They can be merged either in the driver or using the NIC. A
problem with LRO is that it tends to resegment all incoming packets,
often ignoring differences in headers and other information which can
cause errors. It is generally not possible to use LRO when IP
forwarding is enabled. LRO in combination with IP forwarding can lead
to checksum errors. Forwarding is enabled if
/proc/sys/net/ipv4/ip_forward is set to 1.

Generic Receive Offload (GRO)

    Uses either the TCP or UDP protocols. GRO is more rigorous than
LRO when resegmenting packets. For example it checks the MAC headers
of each packet, which must match, only a limited number of TCP or IP
headers can be different, and the TCP timestamps must match.
Resegmenting can be handled by either the NIC or the GSO code.


Traffic steering was on by default with the version of linux i was using,
but worth checking if your using older versions.

https://www.kernel.org/doc/Documentation/networking/scaling.txt

(from the txt link) note: Some advanced NICs allow steering packets to
queues based on programmable filters. For example, webserver bound TCP
port 80 packets can be directed to their own receive queue. Such
=C3=A2=E2=82=AC=C5=93n-tuple=C3=A2=E2=82=AC  filters can be configured from=
 ethtool
(--config-ntuple).


Interestingly investigate your network card, for its hashing algorithms,
how it distributes the traffic over its ring buffers, you can on some cards
adjust the RSS hash function. Alas the card i was using stuck to "toeplitz"
for hits hashing, which others were disabled and unavailable / xor and
crc32. The  indirection table can be adjusted based on the tuplets "ethtool
-X" but didn't really assist too much on this.

ethtool -x <dev>

RX flow hash indirection table for ens192 with 8 RX ring(s):

    0:      0     1     2     3     4     5     6     7

    8:      0     1     2     3     4     5     6     7

   16:      0     1     2     3     4     5     6     7

   24:      0     1     2     3     4     5     6     7

RSS hash key:

Operation not supported

RSS hash function:

    toeplitz: on

    xor: off

    crc32: off


Check the default size of the rx/tx ring buffers, they maybe suboptimal.

ethtool -g ens192

Ring parameters for ens192:

Pre-set maximums:

RX:             4096

RX Mini:        0

RX Jumbo:       4096

TX:             4096

Current hardware settings:

RX:             1024

RX Mini:        0

RX Jumbo:       256

TX:             512


If your using port channels, make sure you have the correct hashing policy
enabled at the switch end...

I haven't investigated this option yet but some switches also do scaling,
to assist (certainly with virtualisation)... Maybe one day i will get
around to this...

Additionally CISCO describe that you should have VM-FEX optimisation

https://www.cisco.com/c/en/us/solutions/collateral/data-center-virtualizati=
on/unified-computing/vm_fex_best_practices_deployment_guide.html

note:

*table 4.* Scaling of Dynamic vNIC with VMDirectPath, Virtual Machines
Running on Linux Guest with VMXNET3 Emulated Driver and Multi-Queue Enabled

*Table 5.* Scaling of Dynamic vNIC with VMDirectPath, Virtual Machines
Running on Linux Guest with VMXNET3 Emulated Driver and Multi-Queue Disable=
d



Another thing to consider/investigate - openvswitch/bridging... If your
using eth pairs to send your traffic down name spaces... you can have some
varied results with performance by trying openvswitch/brctl




I really enjoyed the investigation path, again thanks to Firat for the
pointer, otherwise it would have taken longer to get the answer...


Tony


On Fri, Jun 21, 2019 at 6:50 AM f=C4=B1rat s=C3=B6nmez <firatssonmez@gmail.=
com> wrote:

> Hi,
>
> It has been over 2 years that I have worked with gtp and I kind of had th=
e
> same problem that time, we had a 10gbit cable and tried to see how much u=
dp
> flow we could get. I think we used iperf to test it and when we list all
> the processes, the ksoftirq was using all the resource. Then I found this
> page: https://blog.cloudflare.com/how-to-receive-a-million-packets/. I do
> not remember the exact solution, but I guess when you configure your out
> ethernet interface with the command below, it must work then. To my
> understanding all the packets are processed in the same core in your
> situation, because the port number is always the same. So, for example, i=
f
> you add another network with gtp-u tunnel on another port (different than
> 3386) then again your packets will be processed on the other core, too. B=
ut
> with the below command, the interface will be configured in a way that it
> wont check the port to process on which core it should be processed, but =
it
> will use the hash from the packet to distribute over the cores.
> ethtool -n (your_out_eth_interface) rx-flow-hash udp4
>
> Hope it will work you.
>
> F=C4=B1rat
>
> Tony Clark <chiefy.padua@gmail.com>, 19 Haz 2019 =C3=87ar, 15:07 tarihind=
e
> =C5=9Funu yazd=C4=B1:
>
>> Dear All,
>>
>> I've been using the GTP-U kernel module to communicate with a P-GW.
>>
>> Running Fedora 29, kernel 4.18.16-300.fc29.x86_64.
>>
>> At high traffic levels through the GTP-U tunnel I see the performance
>> degrade as 100% CPU is consumed by a single ksoftirqd process.
>>
>> It is running on a multi-cpu machine and as far as I can tell the load i=
s
>> evenly spread across the cpus (ie either manually via smp_affinity, or e=
ven
>> irqbalance, checking /proc/interrupts so forth.).
>>
>> Has anyone else experienced this?
>>
>> Is there any particular area you could recommend I investigate to find
>> the root cause of this bottleneck, as i'm starting to scratch my head wh=
ere
>> to look next...
>>
>> Thanks in advance
>> Tony
>>
>> ---- FYI
>>
>> modinfo gtp
>> filename:
>> /lib/modules/4.18.16-300.fc29.x86_64/kernel/drivers/net/gtp.ko.xz
>> alias:          net-pf-16-proto-16-family-gtp
>> alias:          rtnl-link-gtp
>> description:    Interface driver for GTP encapsulated traffic
>> author:         Harald Welte <hwelte@sysmocom.de>
>> license:        GPL
>> depends:        udp_tunnel
>> retpoline:      Y
>> intree:         Y
>> name:           gtp
>> vermagic:       4.18.16-300.fc29.x86_64 SMP mod_unload
>>
>> modinfo udp_tunnel
>> filename:
>> /lib/modules/4.18.16-300.fc29.x86_64/kernel/net/ipv4/udp_tunnel.ko.xz
>> license:        GPL
>> depends:
>> retpoline:      Y
>> intree:         Y
>> name:           udp_tunnel
>> vermagic:       4.18.16-300.fc29.x86_64 SMP mod_unload
>>
>

--0000000000009ae42105903cc98b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-family:arial,sans-serif"><span st=
yle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">=
Firstly I would like to say great thanks Firat for the reply, it certainly =
put me on a different investigation path. And apologies for not replying so=
oner. I wanted to make sure it was the correct path before I replied back t=
o the group with the findings and associated solution.</span></span></span>=
</div><div><span style=3D"font-family:arial,sans-serif"><span style=3D"colo=
r:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"><br></span>=
</span></span></div><div><span style=3D"font-family:arial,sans-serif"><span=
 style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255=
)"><br></span></span></span></div><div><span style=3D"font-family:arial,san=
s-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-color:r=
gb(255,255,255)">If the GTP-U connection is connecting to the PG-W with a s=
ingle IP at (src/dst) each side, and UDP flow has isn&#39;t been enabled on=
 the network card of the host using gtp.ko in the kernel all the associated=
 network traffic will be received on a single queue on the network, which i=
s then serviced by a single ksoftirq thread. at somepoint the system will b=
e receiving more traffic than there is available thread space to service th=
e request, your ksoftirq will burn at 100%. That means all your traffic wil=
l be bound to a single network queue, bound to a single irq thread, and lim=
it your overall throughput, no matter how big your network pipe is.</span><=
/span></span><span style=3D"font-family:arial,sans-serif"><span style=3D"co=
lor:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"><br></spa=
n></span></span></div><div><span style=3D"font-family:arial,sans-serif"><sp=
an style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,2=
55)"><br></span></span></span></div><div><span style=3D"font-family:arial,s=
ans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-color=
:rgb(255,255,255)">This is because the network card hashed the packet via S=
RC_IP:SRC_PORT:DEST_IP:DEST_PORT:PROTO to a single queue.</span></span></sp=
an></div><div><span style=3D"font-family:arial,sans-serif"><span style=3D"c=
olor:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"><br></sp=
an></span></span></div><div><p class=3D"MsoNormal"><span style=3D"font-fami=
ly:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"backgr=
ound-color:rgb(255,255,255)"># take note on the discussions about udp-flow-=
hash udp4 using ethtool</span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><a href=3D"https://home.regit.org/tag/performance/" target=3D"_blank" rel=
=3D"noreferrer">https://home.regit.org/tag/performance/</a></span></span></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><a href=3D"https://www.joyent.com/blog/virtualizing-nics" target=3D"_blank=
" rel=3D"noreferrer">https://www.joyent.com/blog/virtualizing-nics</a><br><=
/span></span></span></p><p class=3D"MsoNormal"><span style=3D"font-family:a=
rial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background=
-color:rgb(255,255,255)"><a href=3D"https://www.serializing.me/2015/04/25/r=
xtx-buffers-rss-others-on-boot/" target=3D"_blank" rel=3D"noreferrer">https=
://www.serializing.me/2015/04/25/rxtx-buffers-rss-others-on-boot/</a></span=
></span></span></p><p class=3D"MsoNormal"><span style=3D"font-family:arial,=
sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-colo=
r:rgb(255,255,255)"><br></span></span></span></p><p class=3D"MsoNormal"><sp=
an style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)">=
<span style=3D"background-color:rgb(255,255,255)">You can check if your car=
d supports adjustable parameters by using &quot;ethtool -k DEV | egrep -v f=
ixed&quot;. As firat eludes to (below) udp flow hashing should be supported=
.</span></span></span></p></div><div><span style=3D"font-family:arial,sans-=
serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb=
(255,255,255)"><br></span></span></span></div><div><span style=3D"font-fami=
ly:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"backgr=
ound-color:rgb(255,255,255)">If you enabled UDP flow hash then it will spre=
ad the hash over multiple queues. The default number of queues on the netwo=
rk card can vary, depending on your hardware firmware driver, and any addit=
ional associated kernel parameters.</span></span></span></div><div><span st=
yle=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span=
 style=3D"background-color:rgb(255,255,255)"><br></span></span></span></div=
><div><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb=
(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">Would recommend =
having the latest firmware driver for your network card, and latest kernel =
driver for the network card if possible.</span></span></span></div><div><sp=
an style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)">=
<span style=3D"background-color:rgb(255,255,255)"><br></span></span></span>=
</div><div><span style=3D"font-family:arial,sans-serif"><span style=3D"colo=
r:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">Alas the ne=
twork cards used by my hardware didn&#39;t support flow hash, it had intel =
flow director, which wasn&#39;t granular enough and worked with TCP, so to =
work around this limitation having multiple SRC_IPs in different name space=
s with the same GTP UDP PORT numbers resolved the problem. Of course if you=
 are sending GTP-U to a single destination from multiple sources (say 6 IP&=
#39;s), via 6 different kernel name spaces, you spread the load over 6 queu=
es, which is better than nothing on a limited feature network card. Time to=
 upgrade the 10G network card....<br></span></span></span></div><div><span =
style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><sp=
an style=3D"background-color:rgb(255,255,255)"><br></span></span></span></d=
iv><div><span style=3D"font-family:arial,sans-serif"><span style=3D"color:r=
gb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">This took the =
system from 100% ksoftirq on a single cpu running at throughput 1G, to arou=
nd 7 to 8GIG throughput at 90% ksoftirq over multiple cpu;s... There is sti=
ll massive room for improvement.<br></span></span></span></div><div><span s=
tyle=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><spa=
n style=3D"background-color:rgb(255,255,255)"><br></span></span></span></di=
v><div><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rg=
b(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"><br></span></sp=
an></span></div><div><span style=3D"font-family:arial,sans-serif"><span sty=
le=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"><=
br></span></span></span></div><div><span style=3D"font-family:arial,sans-se=
rif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(2=
55,255,255)">For performance some things to investigate/consider... Which I=
 had different levels of success... Here are my ramblings.....<br></span></=
span></span></div><div><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><br></span></span></span></div><div><span style=3D"font-family:arial,sans-=
serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb=
(255,255,255)">on the linux host... Assuming your traffic is now spread acr=
oss multiple queues (above) - or at least spread as best as can be...</span=
></span></span></div><div><span style=3D"font-family:arial,sans-serif"><spa=
n style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,25=
5)"><br></span></span></span></div><div><span style=3D"font-family:arial,sa=
ns-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-color:=
rgb(255,255,255)">Kernel sysctl tweaking is always of benefit, if your usin=
g out of the box kernel config... Example udp buffers, queue sizes, paging =
and virtual memory settings...=C2=A0 There is a application called &quot;tu=
ned&quot;, which allows you to adjust profiles for the kernel sysctl... My =
performance profile which suited the testing best was &quot;throuhput-perfo=
rmance&quot;<br></span></span></span></div><div><span style=3D"font-family:=
arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"backgroun=
d-color:rgb(255,255,255)"><br></span></span></span></div><div><span style=
=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span st=
yle=3D"background-color:rgb(255,255,255)">if your looking for straight perf=
ormance, disable audit processing like &quot;auditd&quot;.</span></span></s=
pan></div><div><span style=3D"font-family:arial,sans-serif"><span style=3D"=
color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"><br></s=
pan></span></span></div><div><span style=3D"font-family:arial,sans-serif"><=
span style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255=
,255)">Question use of SELINUX, enforcing/permissive or disabled. can bring=
 results on performance, if you doing testing or load testing... ofcourse i=
ts a security consideration.. <br></span></span></span></div><div><span sty=
le=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span =
style=3D"background-color:rgb(255,255,255)"><br></span></span></span></div>=
<div><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0)"><span style=3D"background-color:rgb(255,255,255)">If you don&#39;t =
need to use ipfilters/firewall in my case can increase the throughput by a =
3rd by disabling (cleaning the filter tables and unloading the modules). Bl=
ack listing the modules so they dont get loaded at kernel time. Note you ca=
n stop modules getting loaded with kernel.modules_disabled=3D1, but be care=
ful if your also messing with initramfs rebuilds, because you don&#39;t get=
 any modules once your set that parameter, i learnt the hard way :)<br></sp=
an></span></span></div><div><span style=3D"font-family:arial,sans-serif"><s=
pan style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,=
255)"><br></span></span></span></div><div><span style=3D"font-family:arial,=
sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-colo=
r:rgb(255,255,255)">Investigate smp_affinity and affinity_hint, along with =
irqbalane using the --hintpolicy=3Dexact. understand which irq&#39;s servic=
e the network cards, and how many queues you have.. /proc/interrupts will g=
uide you (grep &#39;CPU|rxtx&#39; /proc/interrupts)... understand the smp_a=
ffinity numbers.. &quot;for ((irq=3DSTART_IRQ; irq&lt;=3DEND_IRQ; irq++)); =
do=C2=A0=C2=A0=C2=A0 cat /proc/irq/$irq/smp_affinity;=C2=A0=C2=A0=C2=A0=C2=
=A0 done | sort =E2=80=93u&quot;, as you can adjust which queue goes to whi=
ch ksoftirq to manually balance the queues if you so desire.</span></span><=
/span><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb=
(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"> brilliant docum=
ent on irq debugging....<a href=3D"https://events.static.linuxfound.org/sit=
es/events/files/slides/LinuxConJapan2016_makita_160714.pdf" target=3D"_blan=
k" rel=3D"noreferrer"> https://events.static.linuxfound.org/sites/events/fi=
les/slides/LinuxConJapan2016_makita_160714.pdf</a></span></span></span>

<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><br></span></span></span></p><span style=3D"font-family:arial,sans-serif">=
<span style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,25=
5,255)"></span></span></span></div><div><span style=3D"font-family:arial,sa=
ns-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-color:=
rgb(255,255,255)">you can monitor what calls are been executed on cpu&#39;s=
 by using... I found this most useful to understand that ipfilter was eatin=
g a significant amount of CPU cycles, and also what other calls are eating =
up cycles inside ksoftirq.<a href=3D"https://github.com/brendangregg/FlameG=
raph" target=3D"_blank" rel=3D"noreferrer"> https://github.com/brendangregg=
/FlameGraph</a></span></span></span></div><div><span style=3D"font-family:a=
rial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background=
-color:rgb(255,255,255)"><br></span></span></span></div><div><span style=3D=
"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=
=3D"background-color:rgb(255,255,255)">Investigate additional memory manage=
ment using numactl (numa daemon). remember if you are using virtualisation =
you might want to pin guests to specific sockets, along with numa pinning o=
n the vmhost.. Also look at reserved memory allocation in the vmhost for th=
e guest... This will make your guest perform better.</span></span></span></=
div><div><span style=3D"font-family:arial,sans-serif"><span style=3D"color:=
rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"><br></span></=
span></span></div><div><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
>enable sysstat (sar) as it will aid your investigation if you havent alrea=
dy (sar -u ALL -P ALL 1). This will show which softirqs are eating most cpu=
 and to which cpu they are bound, this also translates directly to the netw=
ork queue that the traffic is coming in on.. Ie, network card queue 6, talk=
s to cpu/6 talking to irq/6 and so on... Using flamegraph will help you und=
erstand what syscalls and chewing the CPU..<br></span></span></span></div><=
div><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0=
,0,0)"><span style=3D"background-color:rgb(255,255,255)"><br></span></span>=
</span></div><div><span style=3D"font-family:arial,sans-serif"><span style=
=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">If =
your using virtualisation then the number of default queues that vxnet (vmw=
are in this example) presents to the guest might be less than the number of=
 network card queues the vmhost sees (so watch out for that). You can adjus=
t the number of queues to the guest by params in the vmware network driver.=
.. investigate VDMQ / netqueue, to increase the number of available hardwar=
e queues from the vmhost to the guest. depending which quest driver your us=
ing vxnet3, or others some drivers dont support NAPI (see further down).<br=
></span></span></span></div><div><p class=3D"MsoNormal"><span style=3D"font=
-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"b=
ackground-color:rgb(255,255,255)"><b>=C2=A0 VMDQ: array of int</b></span></=
span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><b>=C2=A0=C2=A0=C2=A0 Number of Virtual Machine Device Queues: 0/1 =3D dis=
able, 2-16 enable (default=3D8)</b></span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><b>=C2=A0 RSS: array of int</b></span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><b>=C2=A0=C2=A0=C2=A0 Number of Receive-Side Scaling Descriptor Queues, de=
fault 1=3Dnumber of cpus</b></span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><b>=C2=A0 MQ: array of int</b></span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><b>=C2=A0=C2=A0=C2=A0 Disable or enable Multiple Queues, default 1</b></sp=
an></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
>=C2=A0 Node: array of int</span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
>=C2=A0=C2=A0=C2=A0 set the starting node to allocate memory on, default -1=
</span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><b>=C2=A0 IntMode: array of int</b></span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><b>=C2=A0=C2=A0=C2=A0 Change Interrupt Mode (0=3DLegacy, 1=3DMSI, 2=3DMSI-=
X), default 2</b></span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><b>=C2=A0 InterruptType: array of int</b></span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><b>=C2=A0=C2=A0=C2=A0 Change Interrupt Mode (0=3DLegacy, 1=3DMSI, 2=3DMSI-=
X), default IntMode (deprecated)</b></span></span></span></p></div><div><sp=
an style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)">=
<span style=3D"background-color:rgb(255,255,255)"><br></span></span></span>=
</div><div><span style=3D"font-family:arial,sans-serif"><span style=3D"colo=
r:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">Make sure y=
our virtual switch (vmware) if used has <span class=3D"gmail-stack-view-lab=
el"><span style=3D"font-size:9pt">Pass-through
 (Direct-path I/O) enabled. NIC teaming policy should be validated=20
depending on your requirement, example Policy &quot;route based on IP hash&=
quot;=20
can be of benefit.</span></span></span></span></span></div><div><span style=
=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span st=
yle=3D"background-color:rgb(255,255,255)"><br></span></span></span></div><d=
iv><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,=
0,0)"><span style=3D"background-color:rgb(255,255,255)">Check the network c=
ard is MSI-X, and the linux driver supports NAPI (most should these days, b=
ut you never know), also check your vmhost driver supports napi, if not get=
 a NAPI supported kvm driver, or vmware driver (vib update).</span></span><=
/span></div><div><span style=3D"font-family:arial,sans-serif"><span style=
=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"><br=
></span></span></span></div><div><span style=3D"font-family:arial,sans-seri=
f"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255=
,255,255)">Upgrade your kernel, to a later release 4.x.. even consider usin=
g a later distro of linux... I tried fedora 29. I also compiled latest osmo=
com from source, with compile options for &quot;optimisation -O3 and other =
such&quot;.<br></span></span></span></div><div><span style=3D"font-family:a=
rial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background=
-color:rgb(255,255,255)"><br></span></span></span></div><div><span style=3D=
"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=
=3D"background-color:rgb(255,255,255)">&quot;bmon -b&quot; was a good tool =
understand throughput loads, along with loading through qdisc/fq_dodel mq&#=
39;s.... Understand qdisc via ip link or ifconfig (<a href=3D"http://tldp.o=
rg/HOWTO/Traffic-Control-HOWTO/components.html">http://tldp.org/HOWTO/Traff=
ic-Control-HOWTO/components.html</a>), adjusting the queues has some tracti=
on, but if unsure leave as default.</span></span></span></div><div><span st=
yle=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span=
 style=3D"background-color:rgb(255,255,255)"><br></span></span></span></div=
><div><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb=
(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">TSO/UFo?GSO/LRO/=
GRO - understand your network card with respects to these, this can improve=
 performance if you haven&#39;t already enabled (or adversely disabled opti=
ons, since sometimes it doesn&#39;t actually help). You can get the your ca=
rd options using ethool<br></span></span></span></div><div>
<pre><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0)"><span style=3D"background-color:rgb(255,255,255)">TCP Segmentation =
Offload (TSO)</span></span></span></pre>
<pre><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0)"><span style=3D"background-color:rgb(255,255,255)">=C2=A0=C2=A0=C2=
=A0 Uses the TCP protocol to send large packets. Uses the NIC to handle seg=
mentation, and then adds the TCP, IP and data link layer protocol headers t=
o each segment. </span></span></span></pre>

<pre><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0)"><span style=3D"background-color:rgb(255,255,255)">UDP Fragmentation=
 Offload (UFO)</span></span></span></pre>
<pre><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0)"><span style=3D"background-color:rgb(255,255,255)">=C2=A0=C2=A0=C2=
=A0 Uses the UDP protocol to send large packets. Uses the NIC to handle IP =
fragmentation into MTU sized packets for large UDP datagrams. </span></span=
></span></pre>

<pre><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0)"><span style=3D"background-color:rgb(255,255,255)">Generic Segmentat=
ion Offload (GSO)</span></span></span></pre>
<pre><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0)"><span style=3D"background-color:rgb(255,255,255)">=C2=A0=C2=A0=C2=
=A0 Uses the TCP or UDP protocol to send large packets. If the NIC cannot h=
andle segmentation/fragmentation, GSO performs the same operations, bypassi=
ng the NIC hardware. This is achieved by delaying segmentation until as lat=
e as possible, for example, when the packet is processed by the device driv=
er. </span></span></span></pre>

<pre><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0)"><span style=3D"background-color:rgb(255,255,255)">Large Receive Off=
load (LRO)</span></span></span></pre>
<pre><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0)"><span style=3D"background-color:rgb(255,255,255)">=C2=A0=C2=A0=C2=
=A0 Uses the TCP protocol. All incoming packets are re-segmented as they ar=
e received, reducing the number of segments the system has to process. They=
 can be merged either in the driver or using the NIC. A problem with LRO is=
 that it tends to resegment all incoming packets, often ignoring difference=
s in headers and other information which can cause errors. It is generally =
not possible to use LRO when IP forwarding is enabled. LRO in combination w=
ith IP forwarding can lead to checksum errors. Forwarding is enabled if /pr=
oc/sys/net/ipv4/ip_forward is set to 1. </span></span></span></pre>

<pre><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0)"><span style=3D"background-color:rgb(255,255,255)">Generic Receive O=
ffload (GRO)</span></span></span></pre>
<pre><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0)"><span style=3D"background-color:rgb(255,255,255)">=C2=A0=C2=A0=C2=
=A0 Uses either the TCP or UDP protocols. GRO is more rigorous than LRO whe=
n resegmenting packets. For example it checks the MAC headers of each packe=
t, which must match, only a limited number of TCP or IP headers can be diff=
erent, and the TCP timestamps must match. Resegmenting can be handled by ei=
ther the NIC or the GSO code.</span></span></span></pre>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><br></span></span></span></p><p class=3D"MsoNormal"><span style=3D"font-fa=
mily:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"back=
ground-color:rgb(255,255,255)">Traffic steering was on by default with the =
version of linux i was using, but worth checking if your using older versio=
ns.</span></span></span></p><p class=3D"MsoNormal"><span style=3D"font-fami=
ly:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"backgr=
ound-color:rgb(255,255,255)"><a href=3D"https://www.kernel.org/doc/Document=
ation/networking/scaling.txt" target=3D"_blank" rel=3D"noreferrer">https://=
www.kernel.org/doc/Documentation/networking/scaling.txt</a></span></span></=
span></p>
<pre><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0)"><span style=3D"background-color:rgb(255,255,255)">(from the txt lin=
k) note: Some advanced NICs allow steering packets to queues based on progr=
ammable filters. For example, webserver bound TCP port 80 packets can be di=
rected to their own receive queue. Such =C3=A2=E2=82=AC=C5=93n-tuple=C3=A2=
=E2=82=AC  filters can be configured from ethtool (--config-ntuple).</span>=
</span></span></pre><p class=3D"MsoNormal"><span style=3D"font-family:arial=
,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-col=
or:rgb(255,255,255)"></span></span></span></p></div><div><span style=3D"fon=
t-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"=
background-color:rgb(255,255,255)"><br></span></span></span></div><div><spa=
n style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><=
span style=3D"background-color:rgb(255,255,255)">Interestingly investigate =
your network card, for its hashing algorithms, how it distributes the traff=
ic over its ring buffers, you can on some cards adjust the RSS hash functio=
n. Alas the card i was using stuck to &quot;toeplitz&quot; for hits hashing=
, which others were disabled and unavailable / xor and crc32. The=C2=A0 ind=
irection table can be adjusted based on the tuplets &quot;ethtool -X&quot; =
but didn&#39;t really assist too much on this.</span></span></span></div><d=
iv><p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><spa=
n style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,25=
5)"><span style=3D"font-size:8pt">ethtool -x &lt;dev&gt;</span></span></spa=
n></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><span style=3D"font-size:8pt">RX flow hash indirection table for ens192 wi=
th 8 RX ring(s):</span></span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><span style=3D"font-size:8pt">=C2=A0=C2=A0=C2=A0 0:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0=C2=A0=
=C2=A0=C2=A0 3=C2=A0=C2=A0=C2=A0=C2=A0 4=C2=A0=C2=A0=C2=A0=C2=A0 5=C2=A0=C2=
=A0=C2=A0=C2=A0 6=C2=A0=C2=A0=C2=A0=C2=A0 7</span></span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><span style=3D"font-size:8pt">=C2=A0 =C2=A0=C2=A08:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0=C2=A0=
=C2=A0=C2=A0 3=C2=A0=C2=A0=C2=A0=C2=A0 4=C2=A0=C2=A0=C2=A0=C2=A0 5=C2=A0=C2=
=A0=C2=A0=C2=A0 6=C2=A0=C2=A0=C2=A0=C2=A0 7</span></span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><span style=3D"font-size:8pt">=C2=A0=C2=A0 16:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0=C2=A0=C2=A0=
=C2=A0 3=C2=A0=C2=A0=C2=A0=C2=A0 4=C2=A0=C2=A0=C2=A0=C2=A0 5=C2=A0=C2=A0=C2=
=A0=C2=A0 6=C2=A0=C2=A0=C2=A0=C2=A0 7</span></span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><span style=3D"font-size:8pt">=C2=A0=C2=A0 24:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0=C2=A0=C2=A0=
=C2=A0 3=C2=A0=C2=A0=C2=A0=C2=A0 4=C2=A0=C2=A0=C2=A0=C2=A0 5=C2=A0=C2=A0=C2=
=A0=C2=A0 6=C2=A0=C2=A0=C2=A0=C2=A0 7</span></span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><span style=3D"font-size:8pt">RSS hash key:</span></span></span></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><span style=3D"font-size:8pt">Operation not supported</span></span></span>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><span style=3D"font-size:8pt">RSS hash function:</span></span></span></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><span style=3D"font-size:8pt">=C2=A0=C2=A0=C2=A0 toeplitz: on</span></span=
></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><span style=3D"font-size:8pt">=C2=A0=C2=A0=C2=A0 xor: off</span></span></s=
pan></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><span style=3D"font-size:8pt">=C2=A0=C2=A0 =C2=A0crc32: off</span></span><=
/span></span></p></div><div><span style=3D"font-family:arial,sans-serif"><s=
pan style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,=
255)"><br></span></span></span></div><div><span style=3D"font-family:arial,=
sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-colo=
r:rgb(255,255,255)"><br></span></span></span></div><div><span style=3D"font=
-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"b=
ackground-color:rgb(255,255,255)">Check the default size of the rx/tx ring =
buffers, they maybe suboptimal.<br></span></span></span></div><div><p class=
=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span style=3D"=
color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">ethtool=
 -g ens192
</span></span></span></p><span style=3D"font-family:arial,sans-serif"><span=
 style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255=
)">
</span></span></span><p class=3D"MsoNormal"><span style=3D"font-family:aria=
l,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-co=
lor:rgb(255,255,255)">Ring parameters for ens192:</span></span></span></p><=
span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)=
"><span style=3D"background-color:rgb(255,255,255)">
</span></span></span><p class=3D"MsoNormal"><span style=3D"font-family:aria=
l,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-co=
lor:rgb(255,255,255)">Pre-set maximums:</span></span></span></p><span style=
=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span st=
yle=3D"background-color:rgb(255,255,255)">
</span></span></span><p class=3D"MsoNormal"><span style=3D"font-family:aria=
l,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-co=
lor:rgb(255,255,255)">RX:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 4096</span></span></span></p><span style=3D"font-f=
amily:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"bac=
kground-color:rgb(255,255,255)">
</span></span></span><p class=3D"MsoNormal"><span style=3D"font-family:aria=
l,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-co=
lor:rgb(255,255,255)">RX Mini:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0<=
/span></span></span></p><span style=3D"font-family:arial,sans-serif"><span =
style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)=
">
</span></span></span><p class=3D"MsoNormal"><span style=3D"font-family:aria=
l,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-co=
lor:rgb(255,255,255)">RX Jumbo:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4096</s=
pan></span></span></p><span style=3D"font-family:arial,sans-serif"><span st=
yle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">
</span></span></span><p class=3D"MsoNormal"><span style=3D"font-family:aria=
l,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-co=
lor:rgb(255,255,255)">TX:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 4096</span></span></span></p><span style=3D"font-f=
amily:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"bac=
kground-color:rgb(255,255,255)">
</span></span></span><p class=3D"MsoNormal"><span style=3D"font-family:aria=
l,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-co=
lor:rgb(255,255,255)">Current hardware settings:</span></span></span></p><s=
pan style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"=
><span style=3D"background-color:rgb(255,255,255)">
</span></span></span><p class=3D"MsoNormal"><span style=3D"font-family:aria=
l,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-co=
lor:rgb(255,255,255)">RX:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 1024</span></span></span></p><span style=3D"font-f=
amily:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"bac=
kground-color:rgb(255,255,255)">
</span></span></span><p class=3D"MsoNormal"><span style=3D"font-family:aria=
l,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-co=
lor:rgb(255,255,255)">RX Mini:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0<=
/span></span></span></p><span style=3D"font-family:arial,sans-serif"><span =
style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)=
">
</span></span></span><p class=3D"MsoNormal"><span style=3D"font-family:aria=
l,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-co=
lor:rgb(255,255,255)">RX Jumbo:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 256</sp=
an></span></span></p><span style=3D"font-family:arial,sans-serif"><span sty=
le=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">
</span></span></span><p class=3D"MsoNormal"><span style=3D"font-family:aria=
l,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-co=
lor:rgb(255,255,255)">TX:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 512</span></span></span></p><p class=3D"MsoNormal"=
><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,=
0)"><span style=3D"background-color:rgb(255,255,255)"><br></span></span></s=
pan></p><div><span style=3D"font-family:arial,sans-serif"><span style=3D"co=
lor:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"><span cla=
ss=3D"gmail-stack-view-label"><span style=3D"font-size:9pt">If your using p=
ort channels, make sure you have the correct hashing policy enabled at the =
switch end...</span></span></span></span></span></div><div><span style=3D"f=
ont-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=
=3D"background-color:rgb(255,255,255)"><span class=3D"gmail-stack-view-labe=
l"><span style=3D"font-size:9pt"><br></span></span></span></span></span></d=
iv><div><span style=3D"font-family:arial,sans-serif"><span style=3D"color:r=
gb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">I
 haven&#39;t investigated this option yet but some switches also do scaling=
,
 to assist (certainly with virtualisation)... Maybe one day i will get=20
around to this...<br></span></span></span></div><div><p class=3D"MsoNormal"=
><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,=
0)"><span style=3D"background-color:rgb(255,255,255)">Additionally CISCO de=
scribe that you should have VM-FEX optimisation</span></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><a href=3D"https://www.cisco.com/c/en/us/solutions/collateral/data-center-=
virtualization/unified-computing/vm_fex_best_practices_deployment_guide.htm=
l" target=3D"_blank" rel=3D"noreferrer">https://www.cisco.com/c/en/us/solut=
ions/collateral/data-center-virtualization/unified-computing/vm_fex_best_pr=
actices_deployment_guide.html</a> <br></span></span></span></p><p class=3D"=
MsoNormal"><span style=3D"font-family:arial,sans-serif"><span style=3D"colo=
r:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">note:</span=
></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span s=
tyle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"=
><b><span style=3D"font-size:12pt">table 4.</span></b><b><span style=3D"fon=
t-size:7pt">
</span></b><span style=3D"font-size:12pt">Scaling
 of Dynamic vNIC with VMDirectPath, Virtual Machines Running on Linux=20
Guest with VMXNET3 Emulated Driver and Multi-Queue Enabled</span></span></s=
pan></span></p>

<p class=3D"gmail-ptablecaptioncmt"><span style=3D"font-family:arial,sans-s=
erif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(=
255,255,255)"><b>Table 5.</b><b><span style=3D"font-size:7pt"> </span>
</b>Scaling of Dynamic vNIC with VMDirectPath, Virtual Machines Running=20
on Linux Guest with VMXNET3 Emulated Driver and Multi-Queue Disabled</span>=
</span></span></p></div><p class=3D"MsoNormal"><span style=3D"font-family:a=
rial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background=
-color:rgb(255,255,255)"><span class=3D"gmail-stack-view-label"><span style=
=3D"font-size:9pt"></span></span></span></span></span></p><p class=3D"MsoNo=
rmal"><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb=
(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"><span class=3D"g=
mail-stack-view-label"><span style=3D"font-size:9pt"><br></span></span></sp=
an></span></span></p><p class=3D"MsoNormal"><span style=3D"font-family:aria=
l,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-co=
lor:rgb(255,255,255)"><span class=3D"gmail-stack-view-label"><span style=3D=
"font-size:9pt"><br></span></span></span></span></span></p><p class=3D"MsoN=
ormal"><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rg=
b(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"><span class=3D"=
gmail-stack-view-label"><span style=3D"font-size:9pt">Another thing to cons=
ider/investigate - openvswitch/bridging... If your using eth pairs to send =
your traffic down name spaces... you can have some varied results with perf=
ormance by trying openvswitch/brctl</span></span></span></span></span></p><=
p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span st=
yle=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">=
<span class=3D"gmail-stack-view-label"><span style=3D"font-size:9pt"><br></=
span></span></span></span></span></p><p class=3D"MsoNormal"><span style=3D"=
font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=
=3D"background-color:rgb(255,255,255)"><span class=3D"gmail-stack-view-labe=
l"><span style=3D"font-size:9pt"><br></span></span></span></span></span></p=
><p class=3D"MsoNormal"><span style=3D"font-family:arial,sans-serif"><span =
style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)=
"><span class=3D"gmail-stack-view-label"><span style=3D"font-size:9pt"><br>=
</span></span></span></span></span></p><p class=3D"MsoNormal"><span style=
=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0)"><span st=
yle=3D"background-color:rgb(255,255,255)"><span class=3D"gmail-stack-view-l=
abel"><span style=3D"font-size:9pt">I really enjoyed the investigation path=
, again thanks to Firat for the pointer, otherwise it would have taken long=
er to get the answer...</span></span></span></span></span></p><p class=3D"M=
soNormal"><span style=3D"font-family:arial,sans-serif"><span style=3D"color=
:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)"><span class=
=3D"gmail-stack-view-label"><span style=3D"font-size:9pt"><br></span></span=
></span></span></span></p><p class=3D"MsoNormal"><span style=3D"font-family=
:&quot;Calibri Light&quot;,sans-serif;color:rgb(31,73,125)"><span class=3D"=
gmail-stack-view-label"><span style=3D"font-size:9pt;font-family:&quot;Helv=
etica&quot;,sans-serif;color:rgb(51,51,51)"><span style=3D"font-family:aria=
l,sans-serif"><span style=3D"color:rgb(0,0,0)"><span style=3D"background-co=
lor:rgb(255,255,255)">Tony</span></span></span><br></span></span></span></p=
><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot=
;,sans-serif;color:rgb(31,73,125)"><span class=3D"gmail-stack-view-label"><=
span style=3D"font-size:9pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:rgb(51,51,51)"><br></span></span></span></p></div><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 21, 2019 at 6:50 AM=
 f=C4=B1rat s=C3=B6nmez &lt;<a href=3D"mailto:firatssonmez@gmail.com">firat=
ssonmez@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi,<div=
><br></div><div>It has been over 2 years that I have worked with gtp and I =
kind of had the same=C2=A0problem that time, we had a 10gbit cable and trie=
d to see how much udp flow we could get. I think we used iperf to test it a=
nd when we list all the processes, the ksoftirq was using all the resource.=
 Then I found this page:=C2=A0<a href=3D"https://blog.cloudflare.com/how-to=
-receive-a-million-packets/" target=3D"_blank">https://blog.cloudflare.com/=
how-to-receive-a-million-packets/</a>. I do not remember the exact solution=
, but I guess when you configure your out ethernet interface with the comma=
nd below, it must work then. To my understanding all the packets are proces=
sed in the same core in your situation, because the port number is always t=
he same. So, for example, if you add another network with gtp-u tunnel on a=
nother port (different than 3386) then again your packets will be processed=
 on the other core, too. But with the below command, the interface will be =
configured in a way that it wont check the port to process on which core it=
 should be processed, but it will use the hash from the packet to distribut=
e over the cores.</div><div><span style=3D"background-color:initial;font-fa=
mily:Consolas,Monaco,&quot;Andale Mono&quot;,&quot;Ubuntu Mono&quot;,monosp=
ace;font-size:13px;font-style:inherit;font-variant-ligatures:inherit;font-v=
ariant-caps:inherit;font-weight:inherit;word-spacing:normal;color:black">et=
htool -n (your_out_eth_interface) rx-flow-hash udp4=C2=A0</span></div><div>=
<span style=3D"background-color:initial;font-family:Consolas,Monaco,&quot;A=
ndale Mono&quot;,&quot;Ubuntu Mono&quot;,monospace;font-size:13px;font-styl=
e:inherit;font-variant-ligatures:inherit;font-variant-caps:inherit;font-wei=
ght:inherit;word-spacing:normal;color:black"><br></span></div><div><span st=
yle=3D"background-color:initial;font-family:Consolas,Monaco,&quot;Andale Mo=
no&quot;,&quot;Ubuntu Mono&quot;,monospace;font-size:13px;font-style:inheri=
t;font-variant-ligatures:inherit;font-variant-caps:inherit;font-weight:inhe=
rit;word-spacing:normal;color:black">Hope it will work you.</span></div><di=
v><span style=3D"background-color:initial;font-family:Consolas,Monaco,&quot=
;Andale Mono&quot;,&quot;Ubuntu Mono&quot;,monospace;font-size:13px;font-st=
yle:inherit;font-variant-ligatures:inherit;font-variant-caps:inherit;font-w=
eight:inherit;word-spacing:normal;color:black"><br></span></div><div><span =
style=3D"background-color:initial;font-family:Consolas,Monaco,&quot;Andale =
Mono&quot;,&quot;Ubuntu Mono&quot;,monospace;font-size:13px;font-style:inhe=
rit;font-variant-ligatures:inherit;font-variant-caps:inherit;font-weight:in=
herit;word-spacing:normal;color:black">F=C4=B1rat</span></div></div></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">T=
ony Clark &lt;<a href=3D"mailto:chiefy.padua@gmail.com" target=3D"_blank">c=
hiefy.padua@gmail.com</a>&gt;, 19 Haz 2019 =C3=87ar, 15:07 tarihinde =C5=9F=
unu yazd=C4=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Dear All,<br><br>I&#39;ve been using the GTP-U kernel modu=
le to communicate with a P-GW.<br><br>Running Fedora 29, kernel 4.18.16-300=
.fc29.x86_64.<br><br>At high traffic levels through the GTP-U tunnel I see =
the performance degrade as 100% CPU is consumed by a single ksoftirqd proce=
ss.<br><br>It is running on a multi-cpu machine and as far as I can tell th=
e load is evenly spread across the cpus (ie either manually via smp_affinit=
y, or even irqbalance, checking /proc/interrupts so forth.).<br><br>Has any=
one else experienced this?<br><br>Is there any particular area you could re=
commend I investigate to find the root cause of this bottleneck, as i&#39;m=
 starting to scratch my head where to look next...<br><br>Thanks in advance=
<br>Tony<br>=C2=A0<br>---- FYI<br><br>modinfo gtp<br>filename: =C2=A0 =C2=
=A0 =C2=A0 /lib/modules/4.18.16-300.fc29.x86_64/kernel/drivers/net/gtp.ko.x=
z<br>alias: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0net-pf-16-proto-16-family-gtp=
<br>alias: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rtnl-link-gtp<br>description: =
=C2=A0 =C2=A0Interface driver for GTP encapsulated traffic<br>author: =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Harald Welte &lt;<a href=3D"mailto:hwelte@sysmocom=
.de" target=3D"_blank">hwelte@sysmocom.de</a>&gt;<br>license: =C2=A0 =C2=A0=
 =C2=A0 =C2=A0GPL<br>depends: =C2=A0 =C2=A0 =C2=A0 =C2=A0udp_tunnel<br>retp=
oline: =C2=A0 =C2=A0 =C2=A0Y<br>intree: =C2=A0 =C2=A0 =C2=A0 =C2=A0 Y<br>na=
me: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gtp<br>vermagic: =C2=A0 =C2=A0 =C2=
=A0 4.18.16-300.fc29.x86_64 SMP mod_unload <br><br>modinfo udp_tunnel<br>fi=
lename: =C2=A0 =C2=A0 =C2=A0 /lib/modules/4.18.16-300.fc29.x86_64/kernel/ne=
t/ipv4/udp_tunnel.ko.xz<br>license: =C2=A0 =C2=A0 =C2=A0 =C2=A0GPL<br>depen=
ds: =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>retpoline: =C2=A0 =C2=A0 =C2=A0Y<br>intr=
ee: =C2=A0 =C2=A0 =C2=A0 =C2=A0 Y<br>name: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 udp_tunnel<br>vermagic: =C2=A0 =C2=A0 =C2=A0 4.18.16-300.fc29.x86_64 SM=
P mod_unload <br></div>
</blockquote></div>
</blockquote></div></div>

--0000000000009ae42105903cc98b--
