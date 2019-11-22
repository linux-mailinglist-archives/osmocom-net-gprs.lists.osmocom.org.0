Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 92A411069EF
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 22 Nov 2019 11:27:12 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id C11EAE3344;
	Fri, 22 Nov 2019 10:27:00 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=UumMTA7D
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2a00:1450:4864:20::443; helo=mail-wr1-x443.google.com;
 envelope-from=chiefy.padua@gmail.com;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by lists.osmocom.org (Postfix) with ESMTP id 45031E331F
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 22 Nov 2019 10:26:54 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id n1so7920144wra.10
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 22 Nov 2019 02:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6WZOunORBC1cjvpFSUKZqBvj0ifrsgQ/TErts7sJwLY=;
 b=UumMTA7DIYUiizrDR97ZErKW6wGbieroj2+QZVwZh+NMf+kGlq/AyL+h4M1Jd0Lxzd
 kFaErRMrMSOLsiTsqzLYff18K7599whaxWJpaNuEaALsTcgZ8QfjQmEHzMmryXsVC3tz
 KJuZBLutzHBj4skuN2o/rLGcT+Y4esTxFufU4rUH9HLsZIVmwHR5kSl3C8EJh5Ivg54b
 lYk8INasZHhm/VyFP3v2Vw1LBfLx0in6QTdbWfrdohZdr2W+lBoZ1eCz1LKdeV5LZl/b
 f8wcB8C7J/nI+nHEiejR02FKYgCzvcBXzJrSreqAT4CO+9jQhjgq8aT/U8taQT1bCmab
 FJsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6WZOunORBC1cjvpFSUKZqBvj0ifrsgQ/TErts7sJwLY=;
 b=Mmx8rgKbB8e6OxYqLgLHU29GhxZ/PAyLE+t5tmtQZQib7x7s7AHvbwB3a5Y9JtOOwM
 VUThxPGidjr2QzpdMK1c9gos6PGRzPzoZZKtYKN+BmXiB3uUToaLl04bH6y8h5uM//pf
 OAXeGd2HoQsDBKTzMA/UxuDhpX34OyPqKxKUp6y5W18VykXr3PTBlPogx1YYxFqks9Lx
 g86uxDF641dzsRo6lH183FGCqRVndFgiHAbu3mcCQBxAknV/nWP9Rst8Mu6FTimajsmn
 v8dV1NDgAk29iJtgIaJJS0T7A/EyDNV/MVdYdHlBGD5oJk/JbXBr0rKXvel3n+xzmz3M
 LCiA==
X-Gm-Message-State: APjAAAV3WpBa5+dQaudH4rJtFfQAIE9Buu77nCQvJfo8f2TDXVwX9a0N
 /HZvI/acxJ9X/MT0nAqo928N6lhkwYQ=
X-Google-Smtp-Source: APXvYqykTbFNYpysGrdiDxJ0LORqa5EEmqh/2BYSdpFwHBAe8y4gowWlXaPLGB+DioVNLGsIgZAt1w==
X-Received: by 2002:adf:e387:: with SMTP id e7mr1418127wrm.180.1574418413439; 
 Fri, 22 Nov 2019 02:26:53 -0800 (PST)
Received: from laptop.local ([46.233.90.238])
 by smtp.gmail.com with ESMTPSA id w4sm2819605wmk.29.2019.11.22.02.26.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 22 Nov 2019 02:26:52 -0800 (PST)
Message-ID: <1574418411.3948.13.camel@gmail.com>
Subject: Re: high ksoftirqd while using module gtp?
From: chiefy <chiefy.padua@gmail.com>
To: "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
Date: Fri, 22 Nov 2019 10:26:51 +0000
In-Reply-To: <CA+dJ=bzUhJh8oYAua4bjRLhShCRGyB=7HiX3dhHEhQb4Mw7GOg@mail.gmail.com>
References: <CA+dJ=bxPunvB4GOV5gwUdSf+PPkukNkwhVD=NAr5y2i5a4Gj3w@mail.gmail.com>
 <CAA5f=PhaeiKt_in-D9Tj+3uor7La4EKjK37FbfPJS7xdUAOugw@mail.gmail.com>
 <CA+dJ=bzUhJh8oYAua4bjRLhShCRGyB=7HiX3dhHEhQb4Mw7GOg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Cc: frat =?ISO-8859-1?Q?s=F6nmez?= <firatssonmez@gmail.com>
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Dear All,

To update you on investigations.

If your want to push throughput even further I recommend if your
running hypervisor's or others to enable SR-IOV on the network cards.

Naturally your network cards need to support SR-IOV (check your tech
specs). And in the case of virtualisation SR-IOV might require
licensing from the vendor.

This does need some changes to both changes to BIOS settings on your
hardware (to enable sr-iov vt-x/vt-d (or iommu if your amd)).

You will also have to configure your hypervisors to support sr-iov.

You need to configure your vm guests to also to use your newly
presented network cards (VF).

Dont over allocate vf in your physical nic cards via sr-iov, you might
run out of interrupts :-D

You will see even better throughput, reducing latency, power
consumption and lower resource utilisation on your hypervisors.


Hope this helps.


On Fri, 2019-08-16 at 15:27 +0100, Tony Clark wrote:
> Firstly I would like to say great thanks Firat for the reply, it
> certainly put me on a different investigation path. And apologies for
> not replying sooner. I wanted to make sure it was the correct path
> before I replied back to the group with the findings and associated
> solution.
> 
> 
> If the GTP-U connection is connecting to the PG-W with a single IP at
> (src/dst) each side, and UDP flow has isn't been enabled on the
> network card of the host using gtp.ko in the kernel all the
> associated network traffic will be received on a single queue on the
> network, which is then serviced by a single ksoftirq thread. at
> somepoint the system will be receiving more traffic than there is
> available thread space to service the request, your ksoftirq will
> burn at 100%. That means all your traffic will be bound to a single
> network queue, bound to a single irq thread, and limit your overall
> throughput, no matter how big your network pipe is.
> 
> This is because the network card hashed the packet via
> SRC_IP:SRC_PORT:DEST_IP:DEST_PORT:PROTO to a single queue.
> 
> # take note on the discussions about udp-flow-hash udp4 using ethtool
> https://home.regit.org/tag/performance/
> https://www.joyent.com/blog/virtualizing-nics
> https://www.serializing.me/2015/04/25/rxtx-buffers-rss-others-on-boot
> /
> 
> You can check if your card supports adjustable parameters by using
> "ethtool -k DEV | egrep -v fixed". As firat eludes to (below) udp
> flow hashing should be supported.
> 
> If you enabled UDP flow hash then it will spread the hash over
> multiple queues. The default number of queues on the network card can
> vary, depending on your hardware firmware driver, and any additional
> associated kernel parameters.
> 
> Would recommend having the latest firmware driver for your network
> card, and latest kernel driver for the network card if possible.
> 
> Alas the network cards used by my hardware didn't support flow hash,
> it had intel flow director, which wasn't granular enough and worked
> with TCP, so to work around this limitation having multiple SRC_IPs
> in different name spaces with the same GTP UDP PORT numbers resolved
> the problem. Of course if you are sending GTP-U to a single
> destination from multiple sources (say 6 IP's), via 6 different
> kernel name spaces, you spread the load over 6 queues, which is
> better than nothing on a limited feature network card. Time to
> upgrade the 10G network card....
> 
> This took the system from 100% ksoftirq on a single cpu running at
> throughput 1G, to around 7 to 8GIG throughput at 90% ksoftirq over
> multiple cpu;s... There is still massive room for improvement.
> 
> 
> 
> For performance some things to investigate/consider... Which I had
> different levels of success... Here are my ramblings.....
> 
> on the linux host... Assuming your traffic is now spread across
> multiple queues (above) - or at least spread as best as can be...
> 
> Kernel sysctl tweaking is always of benefit, if your using out of the
> box kernel config... Example udp buffers, queue sizes, paging and
> virtual memory settings...  There is a application called "tuned",
> which allows you to adjust profiles for the kernel sysctl... My
> performance profile which suited the testing best was "throuhput-
> performance"
> 
> if your looking for straight performance, disable audit processing
> like "auditd".
> 
> Question use of SELINUX, enforcing/permissive or disabled. can bring
> results on performance, if you doing testing or load testing...
> ofcourse its a security consideration.. 
> 
> If you don't need to use ipfilters/firewall in my case can increase
> the throughput by a 3rd by disabling (cleaning the filter tables and
> unloading the modules). Black listing the modules so they dont get
> loaded at kernel time. Note you can stop modules getting loaded with
> kernel.modules_disabled=1, but be careful if your also messing with
> initramfs rebuilds, because you don't get any modules once your set
> that parameter, i learnt the hard way :)
> 
> Investigate smp_affinity and affinity_hint, along with irqbalane
> using the --hintpolicy=exact. understand which irq's service the
> network cards, and how many queues you have.. /proc/interrupts will
> guide you (grep 'CPU|rxtx' /proc/interrupts)... understand the
> smp_affinity numbers.. "for ((irq=START_IRQ; irq<=END_IRQ; irq++));
> do    cat /proc/irq/$irq/smp_affinity;     done | sort –u", as you
> can adjust which queue goes to which ksoftirq to manually balance the
> queues if you so desire. brilliant document on irq debugging.... http
> s://events.static.linuxfound.org/sites/events/files/slides/LinuxConJa
> pan2016_makita_160714.pdf
> 
> you can monitor what calls are been executed on cpu's by using... I
> found this most useful to understand that ipfilter was eating a
> significant amount of CPU cycles, and also what other calls are
> eating up cycles inside ksoftirq. https://github.com/brendangregg/Fla
> meGraph
> 
> Investigate additional memory management using numactl (numa daemon).
> remember if you are using virtualisation you might want to pin guests
> to specific sockets, along with numa pinning on the vmhost.. Also
> look at reserved memory allocation in the vmhost for the guest...
> This will make your guest perform better.
> 
> enable sysstat (sar) as it will aid your investigation if you havent
> already (sar -u ALL -P ALL 1). This will show which softirqs are
> eating most cpu and to which cpu they are bound, this also translates
> directly to the network queue that the traffic is coming in on.. Ie,
> network card queue 6, talks to cpu/6 talking to irq/6 and so on...
> Using flamegraph will help you understand what syscalls and chewing
> the CPU..
> 
> If your using virtualisation then the number of default queues that
> vxnet (vmware in this example) presents to the guest might be less
> than the number of network card queues the vmhost sees (so watch out
> for that). You can adjust the number of queues to the guest by params
> in the vmware network driver... investigate VDMQ / netqueue, to
> increase the number of available hardware queues from the vmhost to
> the guest. depending which quest driver your using vxnet3, or others
> some drivers dont support NAPI (see further down).
>   VMDQ: array of int
>     Number of Virtual Machine Device Queues: 0/1 = disable, 2-16
> enable (default=8)
>   RSS: array of int
>     Number of Receive-Side Scaling Descriptor Queues, default
> 1=number of cpus
>   MQ: array of int
>     Disable or enable Multiple Queues, default 1
>   Node: array of int
>     set the starting node to allocate memory on, default -1
>   IntMode: array of int
>     Change Interrupt Mode (0=Legacy, 1=MSI, 2=MSI-X), default 2
>   InterruptType: array of int
>     Change Interrupt Mode (0=Legacy, 1=MSI, 2=MSI-X), default IntMode
> (deprecated)
> 
> Make sure your virtual switch (vmware) if used has Pass-through
> (Direct-path I/O) enabled. NIC teaming policy should be validated
> depending on your requirement, example Policy "route based on IP
> hash" can be of benefit.
> 
> Check the network card is MSI-X, and the linux driver supports NAPI
> (most should these days, but you never know), also check your vmhost
> driver supports napi, if not get a NAPI supported kvm driver, or
> vmware driver (vib update).
> 
> Upgrade your kernel, to a later release 4.x.. even consider using a
> later distro of linux... I tried fedora 29. I also compiled latest
> osmocom from source, with compile options for "optimisation -O3 and
> other such".
> 
> "bmon -b" was a good tool understand throughput loads, along with
> loading through qdisc/fq_dodel mq's.... Understand qdisc via ip link
> or ifconfig (http://tldp.org/HOWTO/Traffic-Control-HOWTO/components.h
> tml), adjusting the queues has some traction, but if unsure leave as
> default.
> 
> TSO/UFo?GSO/LRO/GRO - understand your network card with respects to
> these, this can improve performance if you haven't already enabled
> (or adversely disabled options, since sometimes it doesn't actually
> help). You can get the your card options using ethool
> TCP Segmentation Offload (TSO)
>     Uses the TCP protocol to send large packets. Uses the NIC to
> handle segmentation, and then adds the TCP, IP and data link layer
> protocol headers to each segment. 
> UDP Fragmentation Offload (UFO)
>     Uses the UDP protocol to send large packets. Uses the NIC to
> handle IP fragmentation into MTU sized packets for large UDP
> datagrams. 
> Generic Segmentation Offload (GSO)
>     Uses the TCP or UDP protocol to send large packets. If the NIC
> cannot handle segmentation/fragmentation, GSO performs the same
> operations, bypassing the NIC hardware. This is achieved by delaying
> segmentation until as late as possible, for example, when the packet
> is processed by the device driver. 
> Large Receive Offload (LRO)
>     Uses the TCP protocol. All incoming packets are re-segmented as
> they are received, reducing the number of segments the system has to
> process. They can be merged either in the driver or using the NIC. A
> problem with LRO is that it tends to resegment all incoming packets,
> often ignoring differences in headers and other information which can
> cause errors. It is generally not possible to use LRO when IP
> forwarding is enabled. LRO in combination with IP forwarding can lead
> to checksum errors. Forwarding is enabled if
> /proc/sys/net/ipv4/ip_forward is set to 1. 
> Generic Receive Offload (GRO)
>     Uses either the TCP or UDP protocols. GRO is more rigorous than
> LRO when resegmenting packets. For example it checks the MAC headers
> of each packet, which must match, only a limited number of TCP or IP
> headers can be different, and the TCP timestamps must match.
> Resegmenting can be handled by either the NIC or the GSO code.
> 
> Traffic steering was on by default with the version of linux i was
> using, but worth checking if your using older versions.
> https://www.kernel.org/doc/Documentation/networking/scaling.txt
> (from the txt link) note: Some advanced NICs allow steering packets
> to queues based on programmable filters. For example, webserver bound
> TCP port 80 packets can be directed to their own receive queue. Such
> â€œn-tupleâ€ filters can be configured from ethtool (--config-
> ntuple).
> 
> Interestingly investigate your network card, for its hashing
> algorithms, how it distributes the traffic over its ring buffers, you
> can on some cards adjust the RSS hash function. Alas the card i was
> using stuck to "toeplitz" for hits hashing, which others were
> disabled and unavailable / xor and crc32. The  indirection table can
> be adjusted based on the tuplets "ethtool -X" but didn't really
> assist too much on this.
> ethtool -x <dev>
> RX flow hash indirection table for ens192 with 8 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      0     1     2     3     4     5     6     7
>    16:      0     1     2     3     4     5     6     7
>    24:      0     1     2     3     4     5     6     7
> RSS hash key:
> Operation not supported
> RSS hash function:
>     toeplitz: on
>     xor: off
>     crc32: off
> 
> 
> Check the default size of the rx/tx ring buffers, they maybe
> suboptimal.
> ethtool -g ens192
> Ring parameters for ens192:
> Pre-set maximums:
> RX:             4096
> RX Mini:        0
> RX Jumbo:       4096
> TX:             4096
> Current hardware settings:
> RX:             1024
> RX Mini:        0
> RX Jumbo:       256
> TX:             512
> 
> If your using port channels, make sure you have the correct hashing
> policy enabled at the switch end...
> 
> I haven't investigated this option yet but some switches also do
> scaling, to assist (certainly with virtualisation)... Maybe one day i
> will get around to this...
> Additionally CISCO describe that you should have VM-FEX optimisation
> https://www.cisco.com/c/en/us/solutions/collateral/data-center-virtua
> lization/unified-
> computing/vm_fex_best_practices_deployment_guide.html 
> note:
> table 4. Scaling of Dynamic vNIC with VMDirectPath, Virtual Machines
> Running on Linux Guest with VMXNET3 Emulated Driver and Multi-Queue
> Enabled
> Table 5. Scaling of Dynamic vNIC with VMDirectPath, Virtual Machines
> Running on Linux Guest with VMXNET3 Emulated Driver and Multi-Queue
> Disabled
> 
> 
> Another thing to consider/investigate - openvswitch/bridging... If
> your using eth pairs to send your traffic down name spaces... you can
> have some varied results with performance by trying openvswitch/brctl
> 
> 
> 
> I really enjoyed the investigation path, again thanks to Firat for
> the pointer, otherwise it would have taken longer to get the
> answer...
> 
> Tony
> 
> On Fri, Jun 21, 2019 at 6:50 AM fırat sönmez <firatssonmez@gmail.com>
> wrote:
> > Hi,
> > 
> > It has been over 2 years that I have worked with gtp and I kind of
> > had the same problem that time, we had a 10gbit cable and tried to
> > see how much udp flow we could get. I think we used iperf to test
> > it and when we list all the processes, the ksoftirq was using all
> > the resource. Then I found this page: https://blog.cloudflare.com/h
> > ow-to-receive-a-million-packets/. I do not remember the exact
> > solution, but I guess when you configure your out ethernet
> > interface with the command below, it must work then. To my
> > understanding all the packets are processed in the same core in
> > your situation, because the port number is always the same. So, for
> > example, if you add another network with gtp-u tunnel on another
> > port (different than 3386) then again your packets will be
> > processed on the other core, too. But with the below command, the
> > interface will be configured in a way that it wont check the port
> > to process on which core it should be processed, but it will use
> > the hash from the packet to distribute over the cores.
> > ethtool -n (your_out_eth_interface) rx-flow-hash udp4 
> > 
> > Hope it will work you.
> > 
> > Fırat
> > 
> > Tony Clark <chiefy.padua@gmail.com>, 19 Haz 2019 Çar, 15:07
> > tarihinde şunu yazdı:
> > > Dear All,
> > > 
> > > I've been using the GTP-U kernel module to communicate with a P-
> > > GW.
> > > 
> > > Running Fedora 29, kernel 4.18.16-300.fc29.x86_64.
> > > 
> > > At high traffic levels through the GTP-U tunnel I see the
> > > performance degrade as 100% CPU is consumed by a single ksoftirqd
> > > process.
> > > 
> > > It is running on a multi-cpu machine and as far as I can tell the
> > > load is evenly spread across the cpus (ie either manually via
> > > smp_affinity, or even irqbalance, checking /proc/interrupts so
> > > forth.).
> > > 
> > > Has anyone else experienced this?
> > > 
> > > Is there any particular area you could recommend I investigate to
> > > find the root cause of this bottleneck, as i'm starting to
> > > scratch my head where to look next...
> > > 
> > > Thanks in advance
> > > Tony
> > >  
> > > ---- FYI
> > > 
> > > modinfo gtp
> > > filename:       /lib/modules/4.18.16-
> > > 300.fc29.x86_64/kernel/drivers/net/gtp.ko.xz
> > > alias:          net-pf-16-proto-16-family-gtp
> > > alias:          rtnl-link-gtp
> > > description:    Interface driver for GTP encapsulated traffic
> > > author:         Harald Welte <hwelte@sysmocom.de>
> > > license:        GPL
> > > depends:        udp_tunnel
> > > retpoline:      Y
> > > intree:         Y
> > > name:           gtp
> > > vermagic:       4.18.16-300.fc29.x86_64 SMP mod_unload 
> > > 
> > > modinfo udp_tunnel
> > > filename:       /lib/modules/4.18.16-
> > > 300.fc29.x86_64/kernel/net/ipv4/udp_tunnel.ko.xz
> > > license:        GPL
> > > depends:        
> > > retpoline:      Y
> > > intree:         Y
> > > name:           udp_tunnel
> > > vermagic:       4.18.16-300.fc29.x86_64 SMP mod_unload 
> > > 
