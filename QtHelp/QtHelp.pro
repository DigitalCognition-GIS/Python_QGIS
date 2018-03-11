TEMPLATE = lib
CONFIG += warn_on plugin
QT += help
CONFIG += release
CONFIG -= android_install

win32 {
    PY_MODULE = QtHelp.pyd
    target.files = QtHelp.pyd
    LIBS += -L/home/dhankar/anaconda2/lib -lpython27
} else {
    PY_MODULE = QtHelp.so
    target.files = QtHelp.so
}

target.CONFIG = no_check_exist
target.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += target
sip.path = /home/dhankar/anaconda2/share/sip/PyQt4/QtHelp
sip.files = ../sip/QtHelp/qhelpenginecore.sip ../sip/QtHelp/QtHelpmod.sip ../sip/QtHelp/qhelpsearchresultwidget.sip ../sip/QtHelp/qhelpindexwidget.sip ../sip/QtHelp/qhelpsearchquerywidget.sip ../sip/QtHelp/qhelpcontentwidget.sip ../sip/QtHelp/qhelpsearchengine.sip ../sip/QtHelp/qhelpengine.sip
INSTALLS += sip
QMAKE_CXXFLAGS += -fno-exceptions
QMAKE_LFLAGS += -Wl,--version-script=QtHelp.exp
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

TARGET = QtHelp
HEADERS = sipAPIQtHelp.h
SOURCES = sipQtHelpQHelpSearchQuery.cpp sipQtHelpQList0100QStringList.cpp sipQtHelpQMap0100QString0100QUrl.cpp sipQtHelpQHelpIndexWidget.cpp sipQtHelpQHelpSearchQueryWidget.cpp sipQtHelpQHelpSearchEngine.cpp sipQtHelpQHelpIndexModel.cpp sipQtHelpQHelpEngine.cpp sipQtHelpQList0100QHelpSearchQuery.cpp sipQtHelpQHelpContentModel.cpp sipQtHelpQHelpEngineCore.cpp sipQtHelpQHelpContentWidget.cpp sipQtHelpQHelpSearchResultWidget.cpp sipQtHelpcmodule.cpp sipQtHelpQHelpContentItem.cpp
