#
# build config
#
PACKAGES="dev-java/oracle-jdk-bin"

#
# this method runs in the bb builder container just before starting the build of the rootfs
# 
configure_rootfs_build()
{
    # download oracle jre bin
    JDK_URL=http://download.oracle.com/otn-pub/java/jdk/7u65-b17/jdk-7u65-linux-x64.tar.gz
    #JDK_TAR=$(emerge -pf oracle-jdk-bin 2>&1 >/dev/null | grep -m1 "jre-[0-9a-z]*-linux-x64\.tar\.gz")
    regex="(jdk-[0-9a-z]*-linux-x64\.tar\.gz)"
    if [[ ${JDK_URL} =~ $regex ]]; then
        JDK_TAR="${BASH_REMATCH[1]}"
    fi
    if [ -n ${JDK_TAR} ] && [ ! -f /distfiles/${JDK_TAR} ]; then
        wget --no-cookies --no-check-certificate \
            --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
            -P /distfiles \
            "${JDK_URL}"
    fi
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
# 
finish_rootfs_build()
{
    emerge -C icedtea-bin
    emerge -C python
    echo "include ld.so.conf.d/*.conf" >> /$EMERGE_ROOT/etc/ld.so.conf
    echo "/usr/x86_64-pc-linux-gnu/lib" >> /$EMERGE_ROOT/etc/ld.so.conf
}
