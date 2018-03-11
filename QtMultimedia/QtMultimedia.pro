TEMPLATE = lib
CONFIG += warn_on plugin
QT += multimedia
CONFIG += release
CONFIG -= android_install

win32 {
    PY_MODULE = QtMultimedia.pyd
    target.files = QtMultimedia.pyd
    LIBS += -L/home/dhankar/anaconda2/lib -lpython27
} else {
    PY_MODULE = QtMultimedia.so
    target.files = QtMultimedia.so
}

target.CONFIG = no_check_exist
target.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += target
sip.path = /home/dhankar/anaconda2/share/sip/PyQt4/QtMultimedia
sip.files = ../sip/QtMultimedia/qvideosurfaceformat.sip ../sip/QtMultimedia/qaudioinput.sip ../sip/QtMultimedia/qaudiooutput.sip ../sip/QtMultimedia/qaudioformat.sip ../sip/QtMultimedia/qvideoframe.sip ../sip/QtMultimedia/QtMultimediamod.sip ../sip/QtMultimedia/qabstractvideosurface.sip ../sip/QtMultimedia/qaudio.sip ../sip/QtMultimedia/qaudiodeviceinfo.sip ../sip/QtMultimedia/qabstractvideobuffer.sip
INSTALLS += sip
QMAKE_CXXFLAGS += -fno-exceptions
QMAKE_LFLAGS += -Wl,--version-script=QtMultimedia.exp
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

TARGET = QtMultimedia
HEADERS = sipAPIQtMultimedia.h
SOURCES = sipQtMultimediaQAbstractVideoBuffer.cpp sipQtMultimediaQList0100QVideoFramePixelFormat.cpp sipQtMultimediaQAudio.cpp sipQtMultimediaQList0100QAudioFormatSampleType.cpp sipQtMultimediaQAudioFormat.cpp sipQtMultimediaQVideoFrame.cpp sipQtMultimediaQAudioOutput.cpp sipQtMultimediaQVideoSurfaceFormat.cpp sipQtMultimediacmodule.cpp sipQtMultimediaQList0100QAudioDeviceInfo.cpp sipQtMultimediaQAudioInput.cpp sipQtMultimediaQList0100QAudioFormatEndian.cpp sipQtMultimediaQAbstractVideoSurface.cpp sipQtMultimediaQAudioDeviceInfo.cpp
