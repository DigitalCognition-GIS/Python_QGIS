TEMPLATE = subdirs
CONFIG += ordered
SUBDIRS = QtCore QtGui QtHelp QtMultimedia QtNetwork QtScript QtScriptTools QtXml QtOpenGL QtSql QtSvg QtTest QtWebKit QtXmlPatterns QtDesigner QtDBus Qt pylupdate pyrcc designer

init_py.files = /media/dhankar/Dhankar_1/a1_18/a1_______QGIS/__init__.py
init_py.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += init_py

uic_package.files = /media/dhankar/Dhankar_1/a1_18/a1_______QGIS/pyuic/uic
uic_package.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += uic_package

pyuic4.files = pyuic4
pyuic4.path = /home/dhankar/anaconda2/bin
INSTALLS += pyuic4
