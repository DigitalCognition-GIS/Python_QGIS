/*
 * Interface wrapper code.
 *
 * Generated by SIP 4.18
 *
 * Copyright (c) 2014 Riverbank Computing Limited <info@riverbankcomputing.com>
 * 
 * This file is part of PyQt.
 * 
 * This file may be used under the terms of the GNU General Public
 * License versions 2.0 or 3.0 as published by the Free Software
 * Foundation and appearing in the files LICENSE.GPL2 and LICENSE.GPL3
 * included in the packaging of this file.  Alternatively you may (at
 * your option) use any later version of the GNU General Public
 * License if such license has been publicly approved by Riverbank
 * Computing Limited (or its successors, if any) and the KDE Free Qt
 * Foundation. In addition, as a special exception, Riverbank gives you
 * certain additional rights. These rights are described in the Riverbank
 * GPL Exception version 1.1, which can be found in the file
 * GPL_EXCEPTION.txt in this package.
 * 
 * If you are unsure which license is appropriate for your use, please
 * contact the sales department at sales@riverbankcomputing.com.
 * 
 * This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
 * WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 */

#include "sipAPIQtGui.h"

#line 922 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/sip/QtGui/qevent.sip"
#include <qevent.h>
#line 34 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/QtGui/sipQtGuiQWindowStateChangeEvent.cpp"

#line 35 "sip/QtCore/qnamespace.sip"
#include <qnamespace.h>
#line 38 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/QtGui/sipQtGuiQWindowStateChangeEvent.cpp"
#line 31 "sip/QtCore/qcoreevent.sip"
#include <qcoreevent.h>
#line 41 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/QtGui/sipQtGuiQWindowStateChangeEvent.cpp"


PyDoc_STRVAR(doc_QWindowStateChangeEvent_oldState, "oldState(self) -> Qt.WindowStates");

extern "C" {static PyObject *meth_QWindowStateChangeEvent_oldState(PyObject *, PyObject *);}
static PyObject *meth_QWindowStateChangeEvent_oldState(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = NULL;

    {
        const QWindowStateChangeEvent *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_QWindowStateChangeEvent, &sipCpp))
        {
            Qt::WindowStates*sipRes;

            Py_BEGIN_ALLOW_THREADS
            sipRes = new Qt::WindowStates(sipCpp->oldState());
            Py_END_ALLOW_THREADS

            return sipConvertFromNewType(sipRes,sipType_Qt_WindowStates,NULL);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_QWindowStateChangeEvent, sipName_oldState, doc_QWindowStateChangeEvent_oldState);

    return NULL;
}


/* Call the instance's destructor. */
extern "C" {static void release_QWindowStateChangeEvent(void *, int);}
static void release_QWindowStateChangeEvent(void *sipCppV,int)
{
    Py_BEGIN_ALLOW_THREADS

    delete reinterpret_cast<QWindowStateChangeEvent *>(sipCppV);

    Py_END_ALLOW_THREADS
}


extern "C" {static void dealloc_QWindowStateChangeEvent(sipSimpleWrapper *);}
static void dealloc_QWindowStateChangeEvent(sipSimpleWrapper *sipSelf)
{
    if (sipIsPyOwned(sipSelf))
    {
        release_QWindowStateChangeEvent(sipGetAddress(sipSelf),0);
    }
}


/* Define this type's super-types. */
static sipEncodedTypeDef supers_QWindowStateChangeEvent[] = {{52, 0, 1}};


static PyMethodDef methods_QWindowStateChangeEvent[] = {
    {SIP_MLNAME_CAST(sipName_oldState), meth_QWindowStateChangeEvent_oldState, METH_VARARGS, SIP_MLDOC_CAST(doc_QWindowStateChangeEvent_oldState)}
};


pyqt4ClassTypeDef sipTypeDef_QtGui_QWindowStateChangeEvent = {
{
    {
        -1,
        0,
        0,
        SIP_TYPE_SCC|SIP_TYPE_CLASS,
        sipNameNr_QWindowStateChangeEvent,
        {0}
    },
    {
        sipNameNr_QWindowStateChangeEvent,
        {0, 0, 1},
        1, methods_QWindowStateChangeEvent,
        0, 0,
        0, 0,
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    },
    0,
    -1,
    -1,
    supers_QWindowStateChangeEvent,
    0,
    0,
    0,
    0,
#if PY_MAJOR_VERSION >= 3
    0,
    0,
#else
    0,
    0,
    0,
    0,
#endif
    dealloc_QWindowStateChangeEvent,
    0,
    0,
    0,
    release_QWindowStateChangeEvent,
    0,
    0,
    0,
    0,
    0,
    0,
    0
},
    0,
    0,
    0
};