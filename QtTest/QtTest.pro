TEMPLATE = lib
CONFIG += warn_on plugin
QT += testlib widgets
CONFIG += release
CONFIG -= android_install

win32 {
    PY_MODULE = QtTest.pyd
    target.files = QtTest.pyd
    LIBS += -L/home/dhankar/anaconda2/lib -lpython27
} else {
    PY_MODULE = QtTest.so
    target.files = QtTest.so
}

target.CONFIG = no_check_exist
target.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += target
sip.path = /home/dhankar/anaconda2/share/sip/PyQt4/QtTest
sip.files = ../sip/QtTest/QtTestmod.sip ../sip/QtTest/qtestkeyboard.sip ../sip/QtTest/qtestmouse.sip ../sip/QtTest/qtestcase.sip ../sip/QtTest/qtestsystem.sip
INSTALLS += sip
QMAKE_CXXFLAGS += -fno-exceptions
QMAKE_LFLAGS += -Wl,--version-script=QtTest.exp
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

TARGET = QtTest
HEADERS = sipAPIQtTest.h
SOURCES = sipQtTestcmodule.cpp sipQtTestQTest.cpp
