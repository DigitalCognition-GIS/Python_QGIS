TEMPLATE = lib
CONFIG += warn_on plugin
QT -= gui
QT += xml
CONFIG += release
CONFIG -= android_install

win32 {
    PY_MODULE = QtXml.pyd
    target.files = QtXml.pyd
    LIBS += -L/home/dhankar/anaconda2/lib -lpython27
} else {
    PY_MODULE = QtXml.so
    target.files = QtXml.so
}

target.CONFIG = no_check_exist
target.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += target
sip.path = /home/dhankar/anaconda2/share/sip/PyQt4/QtXml
sip.files = ../sip/QtXml/qxml.sip ../sip/QtXml/qxmlstream.sip ../sip/QtXml/QtXmlmod.sip ../sip/QtXml/qdom.sip
INSTALLS += sip
QMAKE_CXXFLAGS += -fno-exceptions
QMAKE_LFLAGS += -Wl,--version-script=QtXml.exp
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

TARGET = QtXml
HEADERS = sipAPIQtXml.h
SOURCES = sipQtXmlQXmlEntityResolver.cpp sipQtXmlQXmlDTDHandler.cpp sipQtXmlQDomAttr.cpp sipQtXmlQXmlLocator.cpp sipQtXmlQXmlContentHandler.cpp sipQtXmlQXmlReader.cpp sipQtXmlQXmlSimpleReader.cpp sipQtXmlQXmlInputSource.cpp sipQtXmlQXmlLexicalHandler.cpp sipQtXmlQXmlParseException.cpp sipQtXmlQXmlErrorHandler.cpp sipQtXmlQDomEntityReference.cpp sipQtXmlQXmlNamespaceSupport.cpp sipQtXmlQXmlDeclHandler.cpp sipQtXmlQDomCDATASection.cpp sipQtXmlQDomDocumentType.cpp sipQtXmlQDomNodeList.cpp sipQtXmlQDomProcessingInstruction.cpp sipQtXmlQDomComment.cpp sipQtXmlQXmlAttributes.cpp sipQtXmlQDomNode.cpp sipQtXmlQDomCharacterData.cpp sipQtXmlQDomImplementation.cpp sipQtXmlQDomNotation.cpp sipQtXmlQDomDocumentFragment.cpp sipQtXmlQXmlDefaultHandler.cpp sipQtXmlQDomElement.cpp sipQtXmlQDomText.cpp sipQtXmlQDomEntity.cpp sipQtXmlcmodule.cpp sipQtXmlQDomDocument.cpp sipQtXmlQDomNamedNodeMap.cpp
