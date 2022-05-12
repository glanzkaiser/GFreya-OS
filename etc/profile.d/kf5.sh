# Begin /etc/profile.d/kf5.sh

export KF5_PREFIX=/opt/kf5

pathappend $KF5_PREFIX/bin    		PATH
pathappend $KF5_PREFIX/lib/pkgconfig	PKG_CONFIG_PATH

pathappend $KF5_PREFIX/etc/xdg		XDG_CONFIG_DIRS
pathappend $KF5_PREFIX/share		XDG_DATA_DIRS

pathappend $KF5_PREFIX/lib/plugins	QT_PLUGIN_PATH
pathappend $KF5_PREFIX/lib/plugins/kcms	QT_PLUGIN_PATH

pathappend $KF5_PREFIX/lib/qml		QML2_IMPORT_PATH

pathappend $KF5_PREFIX/lib/python3.9/site-packages PYTHONPATH

pathappend $KF5_PREFIX/share/man	MANPATH
# End /etc/profile.d/kf5.sh
