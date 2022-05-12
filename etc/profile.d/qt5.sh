# Begin /etc/profile.d/qt5.sh

QT5DIR=/opt/qt5

pathappend $QT5DIR/bin PATH
pathappend $QT5DIR/lib/pkgconfig PKG_CONFIG_PATH

export QT5DIR

# End /etc/profile.d/qt5.sh
# Begin Qt5 Changes for KF5

pathappend $QT5DIR/plugins         QT_PLUGIN_PATH
pathappend $QT5DIR/qml             QML2_IMPORT_PATH

# End Qt5 changes for KF5
