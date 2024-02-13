Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 142B6853A62
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Feb 2024 19:57:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id CA97E425B9;
	Tue, 13 Feb 2024 18:57:47 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QXHVCR8bDDgD; Tue, 13 Feb 2024 18:57:47 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 6DE11425AF;
	Tue, 13 Feb 2024 18:57:46 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 1115838A0E38
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 10:14:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E39FD2BCBC
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 10:14:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sx3a5yNYjLeO for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 24 Jan 2024 10:14:33 +0000 (UTC)
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
	by mail.osmocom.org (Postfix) with ESMTPS id 008EA2BCB6
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 10:14:32 +0000 (UTC)
Received: by air.basealt.ru (Postfix, from userid 490)
	id 175082F20241; Wed, 24 Jan 2024 10:14:32 +0000 (UTC)
Received: from altlinux.malta.altlinux.ru (obninsk.basealt.ru [217.15.195.17])
	by air.basealt.ru (Postfix) with ESMTPSA id 3234E2F20226;
	Wed, 24 Jan 2024 10:14:28 +0000 (UTC)
From: kovalev@altlinux.org
To: pablo@netfilter.org,
	laforge@gnumonks.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	osmocom-net-gprs@lists.osmocom.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/1] gtp: fix use-after-free and null-ptr-deref in gtp_genl_dump_pdp()
Date: Wed, 24 Jan 2024 13:14:03 +0300
Message-Id: <20240124101404.161655-1-kovalev@altlinux.org>
X-Mailer: git-send-email 2.33.8
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: kovalev@altlinux.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7G2BDOXMKKCYWHERDDDHD4TKNXCCJZ5U
X-Message-ID-Hash: 7G2BDOXMKKCYWHERDDDHD4TKNXCCJZ5U
X-Mailman-Approved-At: Tue, 13 Feb 2024 18:57:43 +0000
CC: kovalev@altlinux.org, nickel@altlinux.org, oficerovas@altlinux.org, dutyrok@altlinux.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/7G2BDOXMKKCYWHERDDDHD4TKNXCCJZ5U/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Syzkaller hit 'general protection fault in gtp_genl_dump_pdp' bug.

This bug is not a vulnerability and is reproduced only when running with =
root privileges.

dmesg (5.10.200):

gtp: GTP module loaded (pdp ctx size 104 bytes)
gtp: GTP module unloaded
general protection fault, probably for non-canonical address 0xdffffc0000=
000001: 0000 [#1] SMP KASAN NOPTI
KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
CPU: 0 PID: 2782 Comm: syz-executor139 Not tainted 5.10.200-std-def-alt1 =
#1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.16.0-alt1 0=
4/01/2014
RIP: 0010:gtp_genl_dump_pdp+0x1b1/0x790 [gtp]
Code: c4 89 c6 e8 b1 07 15 e0 58 45 85 e4 0f 85 97 03 00 00 e8 72 0b 15 e=
0 48 8b 54 24 20 48 b8 00 00 00 00 00 fc ff df 48 c1 ea 03 <80> 3c 02 00 =
0f 85 ac 05 00 00 48 8b 44 24 20 48 8b 08 48 89 0c 24
RSP: 0018:ffff8881146c73f8 EFLAGS: 00010213
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: ffffffffa137fa66
RDX: 0000000000000001 RSI: ffffffffa137f6be RDI: 0000000000000001
gtp: GTP module loaded (pdp ctx size 104 bytes)
RBP: 0000000000000000 R08: 0000000000000000 R09: ffffffff86c4dca7
R10: 0000000000000000 R11: 0000000000000001 R12: 0000000000000001
R13: 0000000000000000 R14: ffff888133b04588 R15: 0000000000000000
FS:  00007f2ea15c5740(0000) GS:ffff888140200000(0000) knlGS:0000000000000=
000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f2ea17686cf CR3: 000000010e56c000 CR4: 0000000000750ef0
PKRU: 55555554
Call Trace:
 genl_lock_dumpit+0x6b/0xa0 net/netlink/genetlink.c:623
 netlink_dump+0x575/0xc70 net/netlink/af_netlink.c:2271
 __netlink_dump_start+0x64e/0x910 net/netlink/af_netlink.c:2376
 genl_family_rcv_msg_dumpit+0x2b8/0x310 net/netlink/genetlink.c:686
 genl_family_rcv_msg net/netlink/genetlink.c:780 [inline]
 genl_rcv_msg+0x450/0x5a0 net/netlink/genetlink.c:800
 netlink_rcv_skb+0x150/0x440 net/netlink/af_netlink.c:2497
 genl_rcv+0x29/0x40 net/netlink/genetlink.c:811
 netlink_unicast_kernel net/netlink/af_netlink.c:1322 [inline]
 netlink_unicast+0x54e/0x800 net/netlink/af_netlink.c:1348
 netlink_sendmsg+0x914/0xe00 net/netlink/af_netlink.c:1916
 sock_sendmsg_nosec net/socket.c:651 [inline]
 __sock_sendmsg+0x159/0x190 net/socket.c:663
 ____sys_sendmsg+0x712/0x870 net/socket.c:2376
 ___sys_sendmsg+0xf8/0x170 net/socket.c:2430
 __sys_sendmsg+0xea/0x1b0 net/socket.c:2459
 do_syscall_64+0x33/0x40 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x62/0xc7
RIP: 0033:0x7f2ea16c2d49
Code: 00 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 48 89 f8 48 89 f=
7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 =
ff ff 73 01 c3 48 8b 0d ef 70 0d 00 f7 d8 64 89 01 48
RSP: 002b:00007ffc93f6ed78 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
RAX: ffffffffffffffda RBX: 00000000000f4240 RCX: 00007f2ea16c2d49
RDX: 0000000020040840 RSI: 0000000020000940 RDI: 0000000000000003
RBP: 0000000000000000 R08: 00007ffc93f6eb08 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 000000000000be43
R13: 00007ffc93f6ed8c R14: 00007ffc93f6eda0 R15: 00007ffc93f6ed90
Modules linked in: gtp udp_tunnel ide_cd_mod ide_gd_mod cdrom ata_generic=
 pata_acpi ata_piix libata scsi_mod ide_pci_generic ppdev kvm_amd joydev =
ccp kvm irqbypass crct10dif_pclmul crc32_pclmul crc32c_intel ghash_clmuln=
i_intel bochs_drm drm_vram_helper drm_ttm_helper ttm drm_kms_helper aesni=
_intel crypto_simd evdev cec input_leds psmouse af_packet i2c_piix4 rc_co=
re cryptd glue_helper serio_raw piix pcspkr intel_agp intel_gtt ide_core =
tiny_power_button floppy parport_pc parport qemu_fw_cfg button sch_fq_cod=
el fuse drm dm_mod binfmt_misc efi_pstore virtio_rng rng_core ip_tables x=
_tables autofs4 [last unloaded: gtp]
---[ end trace 3a80aa87ef53345b ]---
RIP: 0010:gtp_genl_dump_pdp+0x1b1/0x790 [gtp]
Code: c4 89 c6 e8 b1 07 15 e0 58 45 85 e4 0f 85 97 03 00 00 e8 72 0b 15 e=
0 48 8b 54 24 20 48 b8 00 00 00 00 00 fc ff df 48 c1 ea 03 <80> 3c 02 00 =
0f 85 ac 05 00 00 48 8b 44 24 20 48 8b 08 48 89 0c 24
RSP: 0018:ffff8881146c73f8 EFLAGS: 00010213
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: ffffffffa137fa66
RDX: 0000000000000001 RSI: ffffffffa137f6be RDI: 0000000000000001
RBP: 0000000000000000 R08: 0000000000000000 R09: ffffffff86c4dca7
R10: 0000000000000000 R11: 0000000000000001 R12: 0000000000000001
R13: 0000000000000000 R14: ffff888133b04588 R15: 0000000000000000
FS:  00007f2ea15c5740(0000) GS:ffff888140200000(0000) knlGS:0000000000000=
000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f2ea17686cf CR3: 000000010e56c000 CR4: 0000000000750ef0
PKRU: 55555554
note: syz-executor139[2782] exited with preempt_count 1
----------------
Code disassembly (best guess), 1 bytes skipped:
   0:	89 c6                	mov    %eax,%esi
   2:	e8 b1 07 15 e0       	callq  0xe01507b8
   7:	58                   	pop    %rax
   8:	45 85 e4             	test   %r12d,%r12d
   b:	0f 85 97 03 00 00    	jne    0x3a8
  11:	e8 72 0b 15 e0       	callq  0xe0150b88
  16:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
  1b:	48 b8 00 00 00 00 00 fc ff df 	movabs $0xdffffc0000000000,%rax
  25:	48 c1 ea 03          	shr    $0x3,%rdx
* 29:	80 3c 02 00          	cmpb   $0x0,(%rdx,%rax,1) <-- trapping instru=
ction
  2d:	0f 85 ac 05 00 00    	jne    0x5df
  33:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  38:	48 8b 08             	mov    (%rax),%rcx
  3b:	48 89 0c 24          	mov    %rcx,(%rsp)

C reproducer:
// autogenerated by syzkaller (https://github.com/google/syzkaller)

#define _GNU_SOURCE=20

#include <arpa/inet.h>
#include <dirent.h>
#include <endian.h>
#include <errno.h>
#include <fcntl.h>
#include <net/if.h>
#include <netinet/in.h>
#include <signal.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/prctl.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

#include <linux/genetlink.h>
#include <linux/if_addr.h>
#include <linux/if_link.h>
#include <linux/in6.h>
#include <linux/neighbour.h>
#include <linux/net.h>
#include <linux/netlink.h>
#include <linux/rtnetlink.h>
#include <linux/veth.h>

static unsigned long long procid;

static void sleep_ms(uint64_t ms)
{
	usleep(ms * 1000);
}

static uint64_t current_time_ms(void)
{
	struct timespec ts;
	if (clock_gettime(CLOCK_MONOTONIC, &ts))
	exit(1);
	return (uint64_t)ts.tv_sec * 1000 + (uint64_t)ts.tv_nsec / 1000000;
}

static bool write_file(const char* file, const char* what, ...)
{
	char buf[1024];
	va_list args;
	va_start(args, what);
	vsnprintf(buf, sizeof(buf), what, args);
	va_end(args);
	buf[sizeof(buf) - 1] =3D 0;
	int len =3D strlen(buf);
	int fd =3D open(file, O_WRONLY | O_CLOEXEC);
	if (fd =3D=3D -1)
		return false;
	if (write(fd, buf, len) !=3D len) {
		int err =3D errno;
		close(fd);
		errno =3D err;
		return false;
	}
	close(fd);
	return true;
}

struct nlmsg {
	char* pos;
	int nesting;
	struct nlattr* nested[8];
	char buf[4096];
};

static void netlink_init(struct nlmsg* nlmsg, int typ, int flags,
			 const void* data, int size)
{
	memset(nlmsg, 0, sizeof(*nlmsg));
	struct nlmsghdr* hdr =3D (struct nlmsghdr*)nlmsg->buf;
	hdr->nlmsg_type =3D typ;
	hdr->nlmsg_flags =3D NLM_F_REQUEST | NLM_F_ACK | flags;
	memcpy(hdr + 1, data, size);
	nlmsg->pos =3D (char*)(hdr + 1) + NLMSG_ALIGN(size);
}

static void netlink_attr(struct nlmsg* nlmsg, int typ,
			 const void* data, int size)
{
	struct nlattr* attr =3D (struct nlattr*)nlmsg->pos;
	attr->nla_len =3D sizeof(*attr) + size;
	attr->nla_type =3D typ;
	if (size > 0)
		memcpy(attr + 1, data, size);
	nlmsg->pos +=3D NLMSG_ALIGN(attr->nla_len);
}

static int netlink_send_ext(struct nlmsg* nlmsg, int sock,
			    uint16_t reply_type, int* reply_len, bool dofail)
{
	if (nlmsg->pos > nlmsg->buf + sizeof(nlmsg->buf) || nlmsg->nesting)
	exit(1);
	struct nlmsghdr* hdr =3D (struct nlmsghdr*)nlmsg->buf;
	hdr->nlmsg_len =3D nlmsg->pos - nlmsg->buf;
	struct sockaddr_nl addr;
	memset(&addr, 0, sizeof(addr));
	addr.nl_family =3D AF_NETLINK;
	ssize_t n =3D sendto(sock, nlmsg->buf, hdr->nlmsg_len, 0, (struct sockad=
dr*)&addr, sizeof(addr));
	if (n !=3D (ssize_t)hdr->nlmsg_len) {
		if (dofail)
	exit(1);
		return -1;
	}
	n =3D recv(sock, nlmsg->buf, sizeof(nlmsg->buf), 0);
	if (reply_len)
		*reply_len =3D 0;
	if (n < 0) {
		if (dofail)
	exit(1);
		return -1;
	}
	if (n < (ssize_t)sizeof(struct nlmsghdr)) {
		errno =3D EINVAL;
		if (dofail)
	exit(1);
		return -1;
	}
	if (hdr->nlmsg_type =3D=3D NLMSG_DONE)
		return 0;
	if (reply_len && hdr->nlmsg_type =3D=3D reply_type) {
		*reply_len =3D n;
		return 0;
	}
	if (n < (ssize_t)(sizeof(struct nlmsghdr) + sizeof(struct nlmsgerr))) {
		errno =3D EINVAL;
		if (dofail)
	exit(1);
		return -1;
	}
	if (hdr->nlmsg_type !=3D NLMSG_ERROR) {
		errno =3D EINVAL;
		if (dofail)
	exit(1);
		return -1;
	}
	errno =3D -((struct nlmsgerr*)(hdr + 1))->error;
	return -errno;
}

static int netlink_query_family_id(struct nlmsg* nlmsg, int sock, const c=
har* family_name, bool dofail)
{
	struct genlmsghdr genlhdr;
	memset(&genlhdr, 0, sizeof(genlhdr));
	genlhdr.cmd =3D CTRL_CMD_GETFAMILY;
	netlink_init(nlmsg, GENL_ID_CTRL, 0, &genlhdr, sizeof(genlhdr));
	netlink_attr(nlmsg, CTRL_ATTR_FAMILY_NAME, family_name, strnlen(family_n=
ame, GENL_NAMSIZ - 1) + 1);
	int n =3D 0;
	int err =3D netlink_send_ext(nlmsg, sock, GENL_ID_CTRL, &n, dofail);
	if (err < 0) {
		return -1;
	}
	uint16_t id =3D 0;
	struct nlattr* attr =3D (struct nlattr*)(nlmsg->buf + NLMSG_HDRLEN + NLM=
SG_ALIGN(sizeof(genlhdr)));
	for (; (char*)attr < nlmsg->buf + n; attr =3D (struct nlattr*)((char*)at=
tr + NLMSG_ALIGN(attr->nla_len))) {
		if (attr->nla_type =3D=3D CTRL_ATTR_FAMILY_ID) {
			id =3D *(uint16_t*)(attr + 1);
			break;
		}
	}
	if (!id) {
		errno =3D EINVAL;
		return -1;
	}
	recv(sock, nlmsg->buf, sizeof(nlmsg->buf), 0);
	return id;
}

static long syz_genetlink_get_family_id(volatile long name, volatile long=
 sock_arg)
{
	int fd =3D sock_arg;
	if (fd < 0) {
		fd =3D socket(AF_NETLINK, SOCK_RAW, NETLINK_GENERIC);
		if (fd =3D=3D -1) {
			return -1;
		}
	}
	struct nlmsg nlmsg_tmp;
	int ret =3D netlink_query_family_id(&nlmsg_tmp, fd, (char*)name, false);
	if ((int)sock_arg < 0)
		close(fd);
	if (ret < 0) {
		return -1;
	}
	return ret;
}

static void kill_and_wait(int pid, int* status)
{
	kill(-pid, SIGKILL);
	kill(pid, SIGKILL);
	for (int i =3D 0; i < 100; i++) {
		if (waitpid(-1, status, WNOHANG | __WALL) =3D=3D pid)
			return;
		usleep(1000);
	}
	DIR* dir =3D opendir("/sys/fs/fuse/connections");
	if (dir) {
		for (;;) {
			struct dirent* ent =3D readdir(dir);
			if (!ent)
				break;
			if (strcmp(ent->d_name, ".") =3D=3D 0 || strcmp(ent->d_name, "..") =3D=
=3D 0)
				continue;
			char abort[300];
			snprintf(abort, sizeof(abort), "/sys/fs/fuse/connections/%s/abort", en=
t->d_name);
			int fd =3D open(abort, O_WRONLY);
			if (fd =3D=3D -1) {
				continue;
			}
			if (write(fd, abort, 1) < 0) {
			}
			close(fd);
		}
		closedir(dir);
	} else {
	}
	while (waitpid(-1, status, __WALL) !=3D pid) {
	}
}

static void setup_test()
{
	prctl(PR_SET_PDEATHSIG, SIGKILL, 0, 0, 0);
	setpgrp();
	write_file("/proc/self/oom_score_adj", "1000");
}

static void execute_one(void);

#define WAIT_FLAGS __WALL

static void loop(void)
{
	int iter =3D 0;
	for (;; iter++) {
		int pid =3D fork();
		if (pid < 0)
	exit(1);
		if (pid =3D=3D 0) {
			setup_test();
			execute_one();
			exit(0);
		}
		int status =3D 0;
		uint64_t start =3D current_time_ms();
		for (;;) {
			if (waitpid(-1, &status, WNOHANG | WAIT_FLAGS) =3D=3D pid)
				break;
			sleep_ms(1);
			if (current_time_ms() - start < 5000)
				continue;
			kill_and_wait(pid, &status);
			break;
		}
	}
}

uint64_t r[2] =3D {0xffffffffffffffff, 0xffffffffffffffff};

void execute_one(void)
{
		intptr_t res =3D 0;
memcpy((void*)0x20000140, "gtp\000", 4);
	syscall(__NR_delete_module, 0x20000140ul, 0x5000000ul);
	res =3D syscall(__NR_socket, 0x10ul, 3ul, 0x10);
	if (res !=3D -1)
		r[0] =3D res;
memcpy((void*)0x20000100, "gtp\000", 4);
	res =3D -1;
res =3D syz_genetlink_get_family_id(0x20000100, -1);
	if (res !=3D -1)
		r[1] =3D res;
*(uint64_t*)0x20000940 =3D 0;
*(uint32_t*)0x20000948 =3D 0;
*(uint64_t*)0x20000950 =3D 0x20000900;
*(uint64_t*)0x20000900 =3D 0x20000140;
memcpy((void*)0x20000140, "$\000\000\000", 4);
*(uint16_t*)0x20000144 =3D r[1];
memcpy((void*)0x20000146, "\x13\x03\xfc\xff\xff\xff\xfe\xdb\xdf\x25\x02\x=
00\x00\x00\x08\x00\x02\x00\x01\x00\x00\x00\x08\x00\x01\x00", 26);
*(uint32_t*)0x20000160 =3D 0;
*(uint64_t*)0x20000164 =3D r[1];
*(uint32_t*)0x2000016c =3D -1;
*(uint64_t*)0x20000170 =3D -1;
sprintf((char*)0x20000178, "0x%016llx", (long long)-1);
*(uint64_t*)0x20000908 =3D 0x24;
*(uint64_t*)0x20000958 =3D 1;
*(uint64_t*)0x20000960 =3D 0;
*(uint64_t*)0x20000968 =3D 0;
*(uint32_t*)0x20000970 =3D 0;
	syscall(__NR_sendmsg, r[0], 0x20000940ul, 0x20040840ul);

}
int main(void)
{
		syscall(__NR_mmap, 0x1ffff000ul, 0x1000ul, 0ul, 0x32ul, -1, 0ul);
	syscall(__NR_mmap, 0x20000000ul, 0x1000000ul, 7ul, 0x32ul, -1, 0ul);
	syscall(__NR_mmap, 0x21000000ul, 0x1000ul, 0ul, 0x32ul, -1, 0ul);
	for (procid =3D 0; procid < 6; procid++) {
		if (fork() =3D=3D 0) {
			loop();
		}
	}
	sleep(1000000);
	return 0;
}

The bug is also reproduced on the latest stable kernels with the KASAN
sanitizer disabled:

dmesg (6.6.13):

[  523.894617] gtp: GTP module loaded (pdp ctx size 104 bytes)
[  523.908033] gtp: GTP module unloaded
[  523.914798] BUG: kernel NULL pointer dereference, address: 00000000000=
00012
[  523.915255] #PF: supervisor read access in kernel mode
[  523.915255] #PF: error_code(0x0000) - not-present page
[  523.915255] PGD 2a0b9067 P4D 2a0b9067 PUD 6ccc067 PMD 0=20
[  523.915255] Oops: 0000 [#1] PREEMPT SMP NOPTI
[  523.915255] CPU: 1 PID: 9263 Comm: repro7 Not tainted 6.6.13-un-def-al=
t1 #1
[  523.915255] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1=
.16.0-alt1 04/01/2014
[  523.915255] RIP: 0010:gtp_genl_dump_pdp+0x82/0x190 [gtp]
[  523.915255] Code: 70 00 74 21 48 83 c4 18 5b 5d 41 5c 41 5d 41 5e 41 5=
f 31 d2 31 c9 31 f6 31 ff 45 31 c0 45 31 c9 c3 cc cc cc cc e8 0e 0b 57 c0=
 <4c> 8b 23 49 39 dc 74 22 44 89 6c 24 04 44 8b 6c 24 08 4d 85 ff 74
[  523.915255] RSP: 0018:ffffc900017338a8 EFLAGS: 00010246
[  523.915255] RAX: 0000000000000000 RBX: 0000000000000012 RCX: 000000000=
0000000
[  523.915255] RDX: 0000000000000000 RSI: ffff88800713bb60 RDI: 000000000=
0000000
[  523.915255] RBP: ffff88800632b200 R08: 0000000000000000 R09: 000000000=
0000000
[  523.915255] R10: 0000000000000000 R11: 0000000000000000 R12: 000000000=
0000000
[  523.915255] R13: 0000000000000000 R14: ffff88800713bb60 R15: 000000000=
0000000
[  523.915255] FS:  00007f2bcb83f740(0000) GS:ffff88807dc80000(0000) knlG=
S:0000000000000000
[  523.915255] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  523.915255] CR2: 0000000000000012 CR3: 0000000052420000 CR4: 000000000=
0750ee0
[  523.915255] PKRU: 55555554
[  523.915255] Call Trace:
[  523.915255]  <TASK>
[  523.915255]  ? __die+0x1f/0x70
[  523.915255]  ? page_fault_oops+0x14d/0x4a0
[  523.915255]  ? exc_page_fault+0x7b/0x180
[  523.915255]  ? asm_exc_page_fault+0x22/0x30
[  523.915255]  ? gtp_genl_dump_pdp+0x82/0x190 [gtp]
[  523.915255]  ? gtp_genl_dump_pdp+0x82/0x190 [gtp]
[  523.915255]  genl_dumpit+0x2f/0x90
[  523.915255]  netlink_dump+0x126/0x320
[  523.915255]  __netlink_dump_start+0x1da/0x2a0
[  523.915255]  genl_family_rcv_msg_dumpit+0x93/0x100
[  523.915255]  ? __pfx_genl_start+0x10/0x10
[  523.915255]  ? __pfx_genl_dumpit+0x10/0x10
[  523.915255]  ? __pfx_genl_done+0x10/0x10
[  523.915255]  genl_rcv_msg+0x112/0x2a0
[  523.915255]  ? __pfx_gtp_genl_dump_pdp+0x10/0x10 [gtp]
[  523.915255]  ? __pfx_genl_rcv_msg+0x10/0x10
[  523.915255]  netlink_rcv_skb+0x54/0x110
[  523.915255]  genl_rcv+0x24/0x40
[  523.915255]  netlink_unicast+0x19f/0x290
[  523.915255]  netlink_sendmsg+0x250/0x4e0
[  523.915255]  ____sys_sendmsg+0x376/0x3b0
[  523.915255]  ? copy_msghdr_from_user+0x6d/0xb0
[  523.915255]  ___sys_sendmsg+0x86/0xe0
[  523.915255]  ? do_fault+0x296/0x470
[  523.915255]  ? __handle_mm_fault+0x771/0xda0
[  523.915255]  __sys_sendmsg+0x57/0xb0
[  523.915255]  do_syscall_64+0x59/0x90
[  523.915255]  ? ct_kernel_exit.isra.0+0x71/0x90
[  523.915255]  ? __ct_user_enter+0x5a/0xd0
[  523.915255]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
[  523.915255] RIP: 0033:0x7f2bcb93cd49
[  523.915255] Code: 00 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 4=
8 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05=
 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d ef 70 0d 00 f7 d8 64 89 01 48
[  523.915255] RSP: 002b:00007ffe5d907708 EFLAGS: 00000202 ORIG_RAX: 0000=
00000000002e
[  523.915255] RAX: ffffffffffffffda RBX: 0000562f4a49f0a0 RCX: 00007f2bc=
b93cd49
[  523.915255] RDX: 0000000020040840 RSI: 0000000020000940 RDI: 000000000=
0000003
[  523.915255] RBP: 00007ffe5d907720 R08: 00007ffe5d907498 R09: 00007ffe5=
d907720
[  523.915255] R10: 0000000000000000 R11: 0000000000000202 R12: 0000562f4=
a49e210
[  523.915255] R13: 0000000000000000 R14: 0000000000000000 R15: 000000000=
0000000
[  523.915255]  </TASK>

[PATCH 1/1] gtp: fix use-after-free and null-ptr-deref in gtp_genl_dump_p=
dp()

