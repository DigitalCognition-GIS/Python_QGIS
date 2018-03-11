TEMPLATE = lib
CONFIG += warn_on plugin
QT += opengl
CONFIG += release
CONFIG -= android_install

win32 {
    PY_MODULE = QtOpenGL.pyd
    target.files = QtOpenGL.pyd
    LIBS += -L/home/dhankar/anaconda2/lib -lpython27
} else {
    PY_MODULE = QtOpenGL.so
    target.files = QtOpenGL.so
}

target.CONFIG = no_check_exist
target.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += target
sip.path = /home/dhankar/anaconda2/share/sip/PyQt4/QtOpenGL
sip.files = ../sip/QtOpenGL/qglpixelbuffer.sip ../sip/QtOpenGL/QtOpenGLmod.sip ../sip/QtOpenGL/qglframebufferobject.sip ../sip/QtOpenGL/qgl.sip ../sip/QtOpenGL/qglshaderprogram.sip ../sip/QtOpenGL/qglbuffer.sip ../sip/QtOpenGL/qglcolormap.sip
INSTALLS += sip
QMAKE_CXXFLAGS += -fno-exceptions
QMAKE_LFLAGS += -Wl,--version-script=QtOpenGL.exp
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x04ffff
DEFINES += SIP_PROTECTED_IS_PUBLIC protected=public
INCLUDEPATH += .
INCLUDEPATH += /home/dhankar/anaconda2/include/python2.7
INCLUDEPATH += ../qpy/QtOpenGL

win32 {
    QMAKE_POST_LINK = $(COPY_FILE) $(DESTDIR_TARGET) $$PY_MODULE
} else {
    QMAKE_POST_LINK = $(COPY_FILE) $(TARGET) $$PY_MODULE
}
macx {
    QMAKE_LFLAGS += "-undefined dynamic_lookup"
}

TARGET = QtOpenGL
HEADERS = sipAPIQtOpenGL.h ../qpy/QtOpenGL/qpyopengl_api.h
SOURCES = sipQtOpenGLQGLPixelBuffer.cpp sipQtOpenGLQGLColormap.cpp sipQtOpenGLQGLShader.cpp sipQtOpenGLQGLShaderShaderType.cpp sipQtOpenGLQGLContextBindOptions.cpp sipQtOpenGLQGLFormatOpenGLVersionFlags.cpp sipQtOpenGLQGLContext.cpp sipQtOpenGLQGLFramebufferObjectFormat.cpp sipQtOpenGLQGLWidget.cpp sipQtOpenGLQList0101QGLShader.cpp sipQtOpenGLQGLFramebufferObject.cpp sipQtOpenGLQGL.cpp sipQtOpenGLQGLBuffer.cpp sipQtOpenGLQGLFormat.cpp sipQtOpenGLQGLShaderProgram.cpp sipQtOpenGLcmodule.cpp sipQtOpenGLQGLFormatOptions.cpp ../qpy/QtOpenGL/qpyopengl_uniform_value_array.cpp ../qpy/QtOpenGL/qpyopengl_attribute_array.cpp
