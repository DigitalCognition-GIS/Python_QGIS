TEMPLATE = lib
CONFIG += warn_on plugin
QT -= gui
QT += xmlpatterns network
CONFIG += release
CONFIG -= android_install

win32 {
    PY_MODULE = QtXmlPatterns.pyd
    target.files = QtXmlPatterns.pyd
    LIBS += -L/home/dhankar/anaconda2/lib -lpython27
} else {
    PY_MODULE = QtXmlPatterns.so
    target.files = QtXmlPatterns.so
}

target.CONFIG = no_check_exist
target.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += target
sip.path = /home/dhankar/anaconda2/share/sip/PyQt4/QtXmlPatterns
sip.files = ../sip/QtXmlPatterns/qxmlnamepool.sip ../sip/QtXmlPatterns/qxmlname.sip ../sip/QtXmlPatterns/qxmlschemavalidator.sip ../sip/QtXmlPatterns/qabstracturiresolver.sip ../sip/QtXmlPatterns/qsimplexmlnodemodel.sip ../sip/QtXmlPatterns/qxmlserializer.sip ../sip/QtXmlPatterns/qabstractmessagehandler.sip ../sip/QtXmlPatterns/qabstractxmlnodemodel.sip ../sip/QtXmlPatterns/qabstractxmlreceiver.sip ../sip/QtXmlPatterns/qsourcelocation.sip ../sip/QtXmlPatterns/qxmlquery.sip ../sip/QtXmlPatterns/qxmlschema.sip ../sip/QtXmlPatterns/qxmlresultitems.sip ../sip/QtXmlPatterns/QtXmlPatternsmod.sip ../sip/QtXmlPatterns/qxmlformatter.sip
INSTALLS += sip
QMAKE_CXXFLAGS += -fno-exceptions
QMAKE_LFLAGS += -Wl,--version-script=QtXmlPatterns.exp
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

TARGET = QtXmlPatterns
HEADERS = sipAPIQtXmlPatterns.h
SOURCES = sipQtXmlPatternsQXmlSerializer.cpp sipQtXmlPatternsQSourceLocation.cpp sipQtXmlPatternsQXmlSchemaValidator.cpp sipQtXmlPatternsQXmlNamePool.cpp sipQtXmlPatternsQAbstractUriResolver.cpp sipQtXmlPatternsQVector0100QXmlName.cpp sipQtXmlPatternsQVector0100QXmlNodeModelIndex.cpp sipQtXmlPatternsQAbstractXmlNodeModel.cpp sipQtXmlPatternsQXmlSchema.cpp sipQtXmlPatternsQXmlItem.cpp sipQtXmlPatternscmodule.cpp sipQtXmlPatternsQXmlResultItems.cpp sipQtXmlPatternsQXmlFormatter.cpp sipQtXmlPatternsQXmlName.cpp sipQtXmlPatternsQXmlQuery.cpp sipQtXmlPatternsQAbstractXmlReceiver.cpp sipQtXmlPatternsQXmlNodeModelIndex.cpp sipQtXmlPatternsQAbstractMessageHandler.cpp sipQtXmlPatternsQSimpleXmlNodeModel.cpp
