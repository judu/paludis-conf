# bashrc
# This file created by portage2paludis.bash
CHOST="x86_64-pc-linux-gnu"
CFLAGS="-march=native -O2 -pipe -ggdb"
CXXFLAGS="${CFLAGS}"
LDFLAGS="-Wl,-O2 -Wl,--as-needed"
MAKEOPTS="-j3"


case "${CATEGORY}/${PN}" in
    "sys-apps/paludis")
        CXXFLAGS+=" -g -ggdb3 -DHAVE_FFS"
        ;;
    "dev-python/docutils")
        LC_ALL="fr_FR.UTF-8"
        ;;
    "net-libs/neon"|"net-nds/openldap"|"gnome-base/gnome-vfs")
        LDFLAGS+=" -lgcrypt"
        ;;
    "net-libs/xulrunner"|"www-client/firefox")
        WANT_MP="true"
        ;;
    "x11-misc/xkeyboard-config")
	EGIT_COMMIT="2723f9bf7e8376a7b"
esac
