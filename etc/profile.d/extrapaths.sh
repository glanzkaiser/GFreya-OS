if [ -d /usr/local/lib/pkgconfig ] ; then
	pathappend /usr/local/lib/pkgconfig PKG_CONFIG_PATH
fi
if [ -d /usr/local/bin ]; then
	pathprepend /usr/local/bin
fi
if [ -d /usr/local/sbin -a $EUID -eq 0 ]; then
	pathprepend /usr/local/sbin
fi

# Set some defaults before other applications add to these paths
pathappend /usr/share/man MANPATH
pathappend /usr/share/info INFOPATH

# Begin texlive addition

pathappend /opt/texlive/2021/texmf-dist/doc/man MANPATH
pathappend /opt/texlive/2021/texmf-dist/doc/info INFOPATH
pathappend /opt/texlive/2021/bin/x86_64-linux

# End texlive addition

