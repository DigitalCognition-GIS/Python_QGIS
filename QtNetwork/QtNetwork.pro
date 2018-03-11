TEMPLATE = lib
CONFIG += warn_on plugin
QT -= gui
QT += network
CONFIG += release
CONFIG -= android_install

win32 {
    PY_MODULE = QtNetwork.pyd
    target.files = QtNetwork.pyd
    LIBS += -L/home/dhankar/anaconda2/lib -lpython27
} else {
    PY_MODULE = QtNetwork.so
    target.files = QtNetwork.so
}

target.CONFIG = no_check_exist
target.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += target
sip.path = /home/dhankar/anaconda2/share/sip/PyQt4/QtNetwork
sip.files = ../sip/QtNetwork/qssl.sip ../sip/QtNetwork/qsslerror.sip ../sip/QtNetwork/qnetworkconfigmanager.sip ../sip/QtNetwork/qauthenticator.sip ../sip/QtNetwork/qnetworkdiskcache.sip ../sip/QtNetwork/qsslcertificate.sip ../sip/QtNetwork/qnetworkproxy.sip ../sip/QtNetwork/qnetworkcookiejar.sip ../sip/QtNetwork/qabstractsocket.sip ../sip/QtNetwork/qudpsocket.sip ../sip/QtNetwork/qnetworkaccessmanager.sip ../sip/QtNetwork/qtcpsocket.sip ../sip/QtNetwork/qnetworkcookie.sip ../sip/QtNetwork/qlocalsocket.sip ../sip/QtNetwork/qsslcertificateextension.sip ../sip/QtNetwork/qtcpserver.sip ../sip/QtNetwork/qsslcipher.sip ../sip/QtNetwork/qnetworkrequest.sip ../sip/QtNetwork/qhttp.sip ../sip/QtNetwork/qsslsocket.sip ../sip/QtNetwork/qftp.sip ../sip/QtNetwork/qnetworkinterface.sip ../sip/QtNetwork/qnetworkreply.sip ../sip/QtNetwork/qhttpmultipart.sip ../sip/QtNetwork/qhostinfo.sip ../sip/QtNetwork/qsslkey.sip ../sip/QtNetwork/qdnslookup.sip ../sip/QtNetwork/qhostaddress.sip ../sip/QtNetwork/qlocalserver.sip ../sip/QtNetwork/qabstractnetworkcache.sip ../sip/QtNetwork/qsslconfiguration.sip ../sip/QtNetwork/qurlinfo.sip ../sip/QtNetwork/qnetworksession.sip ../sip/QtNetwork/qnetworkconfiguration.sip ../sip/QtNetwork/QtNetworkmod.sip
INSTALLS += sip
QMAKE_CXXFLAGS += -fno-exceptions
QMAKE_LFLAGS += -Wl,--version-script=QtNetwork.exp
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x04ffff
DEFINES += SIP_PROTECTED_IS_PUBLIC protected=public
INCLUDEPATH += .
INCLUDEPATH += /home/dhankar/anaconda2/include/python2.7

win32 {
    QMAKE_POST_LINK = $(COPY_FILE) $(DESTDIR_TARGET) $$PY_MODULE
} else {
    QMAKE_POST_LINK = $(COPY_FILE) $(TARGET) $$PY_MODULE
}
macx {
    QMAKE_LFLAGS += "-undefined dynamic_lookup"
}

TARGET = QtNetwork
HEADERS = sipAPIQtNetwork.h
SOURCES = sipQtNetworkQNetworkConfigurationManager.cpp sipQtNetworkQNetworkDiskCache.cpp sipQtNetworkQNetworkConfigurationManagerCapabilities.cpp sipQtNetworkQDnsLookup.cpp sipQtNetworkQNetworkAccessManager.cpp sipQtNetworkQMultiMap0100QSslAlternateNameEntryType0100QString.cpp sipQtNetworkQNetworkCacheMetaData.cpp sipQtNetworkQList0100QSslCertificateExtension.cpp sipQtNetworkQAbstractSocketBindMode.cpp sipQtNetworkQAbstractSocket.cpp sipQtNetworkQSslCertificate.cpp sipQtNetworkQList0100QNetworkConfiguration.cpp sipQtNetworkQHttpPart.cpp sipQtNetworkQPair0100QHostAddress1800.cpp sipQtNetworkQHostInfo.cpp sipQtNetworkQ_IPV6ADDR.cpp sipQtNetworkQNetworkAddressEntry.cpp sipQtNetworkQList0100QNetworkAddressEntry.cpp sipQtNetworkQNetworkSession.cpp sipQtNetworkQMultiMap0100QSslAlternativeNameEntryType0100QString.cpp sipQtNetworkQList0100QNetworkProxy.cpp sipQtNetworkQSslCipher.cpp sipQtNetworkQNetworkInterfaceInterfaceFlags.cpp sipQtNetworkQAuthenticator.cpp sipQtNetworkQNetworkConfiguration.cpp sipQtNetworkQDnsHostAddressRecord.cpp sipQtNetworkQTcpServer.cpp sipQtNetworkQHttpMultiPart.cpp sipQtNetworkQAbstractNetworkCache.cpp sipQtNetworkQAbstractSocketPauseModes.cpp sipQtNetworkQNetworkProxy.cpp sipQtNetworkQList0100QNetworkCookie.cpp sipQtNetworkQList0100QSslError.cpp sipQtNetworkQSslCertificateExtension.cpp sipQtNetworkQList0100QHostAddress.cpp sipQtNetworkQNetworkConfigurationStateFlags.cpp sipQtNetworkQNetworkProxyCapabilities.cpp sipQtNetworkQNetworkProxyQuery.cpp sipQtNetworkQLocalServerSocketOptions.cpp sipQtNetworkQDnsMailExchangeRecord.cpp sipQtNetworkQSsl.cpp sipQtNetworkQSslSocket.cpp sipQtNetworkQSslConfiguration.cpp sipQtNetworkQList0100QDnsTextRecord.cpp sipQtNetworkQNetworkInterface.cpp sipQtNetworkQNetworkSessionUsagePolicies.cpp sipQtNetworkcmodule.cpp sipQtNetworkQDnsServiceRecord.cpp sipQtNetworkQHash0100QNetworkRequestAttribute0100QVariant.cpp sipQtNetworkQNetworkProxyFactory.cpp sipQtNetworkQDnsTextRecord.cpp sipQtNetworkQDnsDomainNameRecord.cpp sipQtNetworkQList0100QDnsMailExchangeRecord.cpp sipQtNetworkQTcpSocket.cpp sipQtNetworkQNetworkCookie.cpp sipQtNetworkQSslKey.cpp sipQtNetworkQNetworkRequest.cpp sipQtNetworkQSslError.cpp sipQtNetworkQList0100QDnsDomainNameRecord.cpp sipQtNetworkQLocalSocket.cpp sipQtNetworkQLocalServer.cpp sipQtNetworkQUdpSocket.cpp sipQtNetworkQList0100QNetworkInterface.cpp sipQtNetworkQList0100QDnsServiceRecord.cpp sipQtNetworkQList0100QSslCipher.cpp sipQtNetworkQNetworkReply.cpp sipQtNetworkQSslSslOptions.cpp sipQtNetworkQList0100QSslCertificate.cpp sipQtNetworkQNetworkCookieJar.cpp sipQtNetworkQHostAddress.cpp sipQtNetworkQList0100QDnsHostAddressRecord.cpp
