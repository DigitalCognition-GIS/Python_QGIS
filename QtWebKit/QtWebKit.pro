TEMPLATE = lib
CONFIG += warn_on plugin
QT += webkit webkitwidgets network
CONFIG += release
CONFIG -= android_install

win32 {
    PY_MODULE = QtWebKit.pyd
    target.files = QtWebKit.pyd
    LIBS += -L/home/dhankar/anaconda2/lib -lpython27
} else {
    PY_MODULE = QtWebKit.so
    target.files = QtWebKit.so
}

target.CONFIG = no_check_exist
target.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += target
sip.path = /home/dhankar/anaconda2/share/sip/PyQt4/QtWebKit
sip.files = ../sip/QtWebKit/qwebframe.sip ../sip/QtWebKit/qwebkitversion.sip ../sip/QtWebKit/qwebpage.sip ../sip/QtWebKit/qwebview.sip ../sip/QtWebKit/qwebpluginfactory.sip ../sip/QtWebKit/qgraphicswebview.sip ../sip/QtWebKit/QtWebKitmod.sip ../sip/QtWebKit/qwebhistory.sip ../sip/QtWebKit/qwebdatabase.sip ../sip/QtWebKit/qwebsettings.sip ../sip/QtWebKit/qwebelement.sip ../sip/QtWebKit/qwebhistoryinterface.sip ../sip/QtWebKit/qwebsecurityorigin.sip ../sip/QtWebKit/qwebinspector.sip ../sip/QtWebKit/qwebkitglobal.sip
INSTALLS += sip
QMAKE_CXXFLAGS += -fno-exceptions
QMAKE_LFLAGS += -Wl,--version-script=QtWebKit.exp
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

TARGET = QtWebKit
HEADERS = sipAPIQtWebKit.h
SOURCES = sipQtWebKitQWebElementCollection.cpp sipQtWebKitcmodule.cpp sipQtWebKitQWebPageChooseMultipleFilesExtensionOption.cpp sipQtWebKitQWebPageFindFlags.cpp sipQtWebKitQList0100QWebPluginFactoryMimeType.cpp sipQtWebKitQWebPage.cpp sipQtWebKitQWebHitTestResult.cpp sipQtWebKitQWebInspector.cpp sipQtWebKitQWebHistoryInterface.cpp sipQtWebKitQWebPageViewportAttributes.cpp sipQtWebKitQWebDatabase.cpp sipQtWebKitQWebElement.cpp sipQtWebKitQGraphicsWebView.cpp sipQtWebKitQWebFrame.cpp sipQtWebKitQList0100QWebPluginFactoryPlugin.cpp sipQtWebKitQWebView.cpp sipQtWebKitQList0100QWebSecurityOrigin.cpp sipQtWebKitQList0100QWebHistoryItem.cpp sipQtWebKitQWebFrameRenderLayers.cpp sipQtWebKitQWebPageExtensionReturn.cpp sipQtWebKitQWebPageErrorPageExtensionOption.cpp sipQtWebKitQList0101QWebFrame.cpp sipQtWebKitQList0100QWebDatabase.cpp sipQtWebKitQWebHistoryItem.cpp sipQtWebKitQWebPluginFactoryExtensionReturn.cpp sipQtWebKitQWebHistory.cpp sipQtWebKitQWebPageErrorPageExtensionReturn.cpp sipQtWebKitQWebPluginFactoryPlugin.cpp sipQtWebKitQWebPageChooseMultipleFilesExtensionReturn.cpp sipQtWebKitQWebSettings.cpp sipQtWebKitQList0100QWebElement.cpp sipQtWebKitQMultiMap0100QString0100QString.cpp sipQtWebKitQWebPluginFactory.cpp sipQtWebKitQWebPageExtensionOption.cpp sipQtWebKitQWebPluginFactoryMimeType.cpp sipQtWebKitQWebSecurityOrigin.cpp sipQtWebKitQWebPluginFactoryExtensionOption.cpp
