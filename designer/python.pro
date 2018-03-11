CONFIG      += plugin $QTCONFIG@ warn_on

greaterThan(QT_MAJOR_VERSION, 4) {
    QT += designer

    # Work around QTBUG-39300.
    CONFIG -= android_install
}

lessThan(QT_MAJOR_VERSION, 5) {
    CONFIG += designer
}

TARGET      = pyqt4
TEMPLATE    = lib

INCLUDEPATH += /home/dhankar/anaconda2/include/python2.7
LIBS        += -L/home/dhankar/anaconda2/lib -lpython2.7
DEFINES     += PYTHON_LIB=\\\"libpython2.7.so\\\"

SOURCES     = pluginloader.cpp
HEADERS     = pluginloader.h

# Install.
target.path = /home/dhankar/anaconda2/plugins/designer

python.path = /home/dhankar/anaconda2/plugins/designer
python.files = python

INSTALLS    += target python

INCLUDEPATH += /media/dhankar/Dhankar_1/a1_18/a1_______QGIS/designer
VPATH = /media/dhankar/Dhankar_1/a1_18/a1_______QGIS/designer

