TEMPLATE = lib
CONFIG += warn_on plugin
QT += designer
CONFIG += release
CONFIG -= android_install

win32 {
    PY_MODULE = QtDesigner.pyd
    target.files = QtDesigner.pyd
    LIBS += -L/home/dhankar/anaconda2/lib -lpython27
} else {
    PY_MODULE = QtDesigner.so
    target.files = QtDesigner.so
}

target.CONFIG = no_check_exist
target.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += target
sip.path = /home/dhankar/anaconda2/share/sip/PyQt4/QtDesigner
sip.files = ../sip/QtDesigner/abstractwidgetbox.sip ../sip/QtDesigner/default_extensionfactory.sip ../sip/QtDesigner/qpydesignercustomwidgetplugin.sip ../sip/QtDesigner/abstractformwindowmanager.sip ../sip/QtDesigner/propertysheet.sip ../sip/QtDesigner/abstractactioneditor.sip ../sip/QtDesigner/abstractformeditor.sip ../sip/QtDesigner/qpydesignercustomwidgetcollectionplugin.sip ../sip/QtDesigner/formbuilder.sip ../sip/QtDesigner/extension.sip ../sip/QtDesigner/qpydesignertaskmenuextension.sip ../sip/QtDesigner/taskmenu.sip ../sip/QtDesigner/qpydesignerpropertysheetextension.sip ../sip/QtDesigner/customwidget.sip ../sip/QtDesigner/abstractobjectinspector.sip ../sip/QtDesigner/abstractpropertyeditor.sip ../sip/QtDesigner/abstractformbuilder.sip ../sip/QtDesigner/abstractformwindowcursor.sip ../sip/QtDesigner/membersheet.sip ../sip/QtDesigner/qextensionmanager.sip ../sip/QtDesigner/qpydesignermembersheetextension.sip ../sip/QtDesigner/abstractformwindow.sip ../sip/QtDesigner/qpydesignercontainerextension.sip ../sip/QtDesigner/container.sip ../sip/QtDesigner/QtDesignermod.sip
INSTALLS += sip
QMAKE_CXXFLAGS += -fno-exceptions
QMAKE_LFLAGS += -Wl,--version-script=QtDesigner.exp
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x04ffff
DEFINES += SIP_PROTECTED_IS_PUBLIC protected=public
INCLUDEPATH += .
INCLUDEPATH += /home/dhankar/anaconda2/include/python2.7
INCLUDEPATH += ../qpy/QtDesigner

win32 {
    QMAKE_POST_LINK = $(COPY_FILE) $(DESTDIR_TARGET) $$PY_MODULE
} else {
    QMAKE_POST_LINK = $(COPY_FILE) $(TARGET) $$PY_MODULE
}
macx {
    QMAKE_LFLAGS += "-undefined dynamic_lookup"
}

TARGET = QtDesigner
HEADERS = sipAPIQtDesigner.h ../qpy/QtDesigner/qpydesignertaskmenuextension.h ../qpy/QtDesigner/qpydesignercustomwidgetplugin.h ../qpy/QtDesigner/qpydesignercustomwidgetcollectionplugin.h ../qpy/QtDesigner/qpydesignercontainerextension.h ../qpy/QtDesigner/qpydesignermembersheetextension.h ../qpy/QtDesigner/qpydesignerpropertysheetextension.h
SOURCES = sipQtDesignerQAbstractFormBuilder.cpp sipQtDesignerQFormBuilder.cpp sipQtDesignerQAbstractExtensionFactory.cpp sipQtDesignerQDesignerMemberSheetExtension.cpp sipQtDesignerQAbstractExtensionManager.cpp sipQtDesignerQPyDesignerCustomWidgetPlugin.cpp sipQtDesignerQList0101QDesignerCustomWidgetInterface.cpp sipQtDesignerQDesignerFormWindowManagerInterface.cpp sipQtDesignerQDesignerFormEditorInterface.cpp sipQtDesignerQDesignerActionEditorInterface.cpp sipQtDesignerQPyDesignerPropertySheetExtension.cpp sipQtDesignerQDesignerFormWindowInterface.cpp sipQtDesignerQDesignerWidgetBoxInterface.cpp sipQtDesignerQDesignerContainerExtension.cpp sipQtDesignerQDesignerCustomWidgetInterface.cpp sipQtDesignerQDesignerFormWindowInterfaceFeature.cpp sipQtDesignerQPyDesignerCustomWidgetCollectionPlugin.cpp sipQtDesignerQExtensionManager.cpp sipQtDesignerQDesignerObjectInspectorInterface.cpp sipQtDesignerQDesignerTaskMenuExtension.cpp sipQtDesignerQPyDesignerMemberSheetExtension.cpp sipQtDesignerQPyDesignerTaskMenuExtension.cpp sipQtDesignerQDesignerCustomWidgetCollectionInterface.cpp sipQtDesignerQPyDesignerContainerExtension.cpp sipQtDesignerQDesignerPropertySheetExtension.cpp sipQtDesignerQDesignerPropertyEditorInterface.cpp sipQtDesignerQExtensionFactory.cpp sipQtDesignercmodule.cpp sipQtDesignerQDesignerFormWindowCursorInterface.cpp
