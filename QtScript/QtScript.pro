TEMPLATE = lib
CONFIG += warn_on plugin
QT -= gui
QT += script
CONFIG += release
CONFIG -= android_install

win32 {
    PY_MODULE = QtScript.pyd
    target.files = QtScript.pyd
    LIBS += -L/home/dhankar/anaconda2/lib -lpython27
} else {
    PY_MODULE = QtScript.so
    target.files = QtScript.so
}

target.CONFIG = no_check_exist
target.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += target
sip.path = /home/dhankar/anaconda2/share/sip/PyQt4/QtScript
sip.files = ../sip/QtScript/qscriptcontextinfo.sip ../sip/QtScript/qscriptcontext.sip ../sip/QtScript/qscriptengineagent.sip ../sip/QtScript/qscriptengine.sip ../sip/QtScript/qscriptclass.sip ../sip/QtScript/qscriptstring.sip ../sip/QtScript/qscriptvalue.sip ../sip/QtScript/qscriptclasspropertyiterator.sip ../sip/QtScript/QtScriptmod.sip ../sip/QtScript/qscriptvalueiterator.sip
INSTALLS += sip
QMAKE_CXXFLAGS += -fno-exceptions
QMAKE_LFLAGS += -Wl,--version-script=QtScript.exp
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

TARGET = QtScript
HEADERS = sipAPIQtScript.h
SOURCES = sipQtScriptQScriptValuePropertyFlags.cpp sipQtScriptQScriptClassPropertyIterator.cpp sipQtScriptQScriptEngineQObjectWrapOptions.cpp sipQtScriptQScriptSyntaxCheckResult.cpp sipQtScriptQScriptValueIterator.cpp sipQtScriptQScriptEngineAgent.cpp sipQtScriptQScriptString.cpp sipQtScriptQScriptValue.cpp sipQtScriptQScriptClassQueryFlags.cpp sipQtScriptQList0100QScriptValue.cpp sipQtScriptQScriptEngine.cpp sipQtScriptQScriptValueResolveFlags.cpp sipQtScriptQScriptContext.cpp sipQtScriptQScriptClass.cpp sipQtScriptQScriptContextInfo.cpp sipQtScriptQList0100QScriptContextInfo.cpp sipQtScriptcmodule.cpp
