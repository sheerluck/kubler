### kubler/gcc:20170723

Built: Sun Jul 23 14:52:15 CEST 2017
Image Size: 181MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/mpc-1.0.2-r1 | `-static-libs`
dev-libs/mpfr-3.1.3_p4 | `-static-libs`
sys-devel/binutils-2.28-r2 | `cxx nls -multitarget -static-libs {-test} -vanilla`
sys-devel/binutils-config-5-r3 | ``
sys-devel/gcc-5.4.0-r3 | `cxx hardened nls nptl openmp vtv (-altivec) (-awt) -cilk -debug -doc (-fixed-point) -fortran -gcj -go -graphite (-jit) (-libssp) -mpx (-multilib) -nopie -nossp -objc -objc`
sys-devel/gcc-config-1.7.3 | ``
sys-devel/make-4.2.1 | `nls -guile -static`
sys-kernel/linux-headers-4.4 | ``
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler/bash** |
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-portage/portage-utils-0.62 | `nls -static`
app-shells/bash-4.3_p48-r1 | `net nls (readline) -afs -bashlogger -examples -mem-scramble -plugins`
dev-libs/iniparser-3.1-r1 | `-doc -examples -static-libs`
net-misc/curl-7.54.1 | `ssl threads -adns -http2 -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
sys-apps/acl-2.2.52-r1 | `nls -static-libs`
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-apps/coreutils-8.25 | `acl nls (xattr) -caps -gmp -hostname -kill -multicall (-selinux) -static -vanilla`
sys-apps/file-5.30 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `acl nls (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
**FROM kubler/openssl** |
app-misc/ca-certificates-20161102.3.27.2-r2 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2k | `asm sslv3 tls-heartbeat zlib -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -static-libs {-test} -vanilla`
sys-apps/debianutils-4.7 | `-static`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
**FROM kubler/s6** |
dev-lang/execline-2.3.0.1 | `-static -static-libs`
dev-libs/skalibs-2.5.1.1 | `-doc -ipv6 -static-libs`
sys-apps/s6-2.5.1.0 | `-static -static-libs`
*manual install*: entr-3.6 | http://entrproject.org/
**FROM kubler/glibc** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r4 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `nls -leaps`
**FROM kubler/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [ ] Headers
- [ ] Static Libs

#### Included
- [x] Headers from kubler/glibc
- [x] Static Libs from kubler/glibc
