TEMPLATE = lib
CONFIG += warn_on plugin
QT -= gui
QT += dbus
CONFIG += release
CONFIG -= android_install

win32 {
    PY_MODULE = QtDBus.pyd
    target.files = QtDBus.pyd
    LIBS += -L/home/dhankar/anaconda2/lib -lpython27
} else {
    PY_MODULE = QtDBus.so
    target.files = QtDBus.so
}

target.CONFIG = no_check_exist
target.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += target
sip.path = /home/dhankar/anaconda2/share/sip/PyQt4/QtDBus
sip.files = ../sip/QtDBus/qdbusextratypes.sip ../sip/QtDBus/qpydbusreply.sip ../sip/QtDBus/qdbusconnection.sip ../sip/QtDBus/qdbuspendingcall.sip ../sip/QtDBus/qdbusmessage.sip ../sip/QtDBus/QtDBusmod.sip ../sip/QtDBus/qdbusargument.sip ../sip/QtDBus/qdbusabstractadaptor.sip ../sip/QtDBus/qdbusinterface.sip ../sip/QtDBus/qdbusconnectioninterface.sip ../sip/QtDBus/qdbusservicewatcher.sip ../sip/QtDBus/qdbusunixfiledescriptor.sip ../sip/QtDBus/qdbuserror.sip ../sip/QtDBus/qdbusabstractinterface.sip ../sip/QtDBus/qpydbuspendingreply.sip
INSTALLS += sip
QMAKE_CXXFLAGS += -fno-exceptions
QMAKE_LFLAGS += -Wl,--version-script=QtDBus.exp
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x04ffff
DEFINES += SIP_PROTECTED_IS_PUBLIC protected=public
INCLUDEPATH += .
INCLUDEPATH += /home/dhankar/anaconda2/include/python2.7
INCLUDEPATH += ../qpy/QtDBus

win32 {
    QMAKE_POST_LINK = $(COPY_FILE) $(DESTDIR_TARGET) $$PY_MODULE
} else {
    QMAKE_POST_LINK = $(COPY_FILE) $(TARGET) $$PY_MODULE
}
macx {
    QMAKE_LFLAGS += "-undefined dynamic_lookup"
}

TARGET = QtDBus
HEADERS = sipAPIQtDBus.h ../qpy/QtDBus/qpydbusreply.h ../qpy/QtDBus/qpydbuspendingreply.h ../qpy/QtDBus/qpydbus_chimera_helpers.h ../qpy/QtDBus/qpydbus_api.h
SOURCES = sipQtDBusQDBusReply0100QString.cpp sipQtDBusQDBusReply0100QStringList.cpp sipQtDBusQDBusServiceWatcher.cpp sipQtDBusQDBusPendingCallWatcher.cpp sipQtDBusQDBus.cpp sipQtDBuscmodule.cpp sipQtDBusQDBusSignature.cpp sipQtDBusQPyDBusPendingReply.cpp sipQtDBusQDBusObjectPath.cpp sipQtDBusQDBusConnectionConnectionCapabilities.cpp sipQtDBusQDBusReply1900.cpp sipQtDBusQDBusError.cpp sipQtDBusQDBusMessage.cpp sipQtDBusQDBusReply2600.cpp sipQtDBusQDBusUnixFileDescriptor.cpp sipQtDBusQDBusAbstractAdaptor.cpp sipQtDBusQDBusConnectionRegisterOptions.cpp sipQtDBusQDBusInterface.cpp sipQtDBusQDBusVariant.cpp sipQtDBusQDBusAbstractInterface.cpp sipQtDBusQDBusServiceWatcherWatchMode.cpp sipQtDBusQDBusConnection.cpp sipQtDBusQDBusArgument.cpp sipQtDBusQDBusReply0400.cpp sipQtDBusQDBusConnectionInterface.cpp sipQtDBusQDBusReply0100QDBusConnectionInterfaceRegisterServiceReply.cpp sipQtDBusQDBusPendingCall.cpp sipQtDBusQPyDBusReply.cpp ../qpy/QtDBus/qpydbus_post_init.cpp ../qpy/QtDBus/qpydbusreply.cpp ../qpy/QtDBus/qpydbuspendingreply.cpp ../qpy/QtDBus/qpydbus_chimera_helpers.cpp
