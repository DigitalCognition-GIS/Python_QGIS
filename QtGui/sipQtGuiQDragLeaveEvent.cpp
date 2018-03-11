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

#line 801 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/sip/QtGui/qevent.sip"
#include <qevent.h>
#line 34 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/QtGui/sipQtGuiQDragLeaveEvent.cpp"

#line 31 "sip/QtCore/qcoreevent.sip"
#include <qcoreevent.h>
#line 38 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/QtGui/sipQtGuiQDragLeaveEvent.cpp"


class sipQDragLeaveEvent : public QDragLeaveEvent
{
public:
    sipQDragLeaveEvent();
    sipQDragLeaveEvent(const QDragLeaveEvent&);
    ~sipQDragLeaveEvent();

public:
    sipSimpleWrapper *sipPySelf;

private:
    sipQDragLeaveEvent(const sipQDragLeaveEvent &);
    sipQDragLeaveEvent &operator = (const sipQDragLeaveEvent &);
};

sipQDragLeaveEvent::sipQDragLeaveEvent(): QDragLeaveEvent(), sipPySelf(0)
{
}

sipQDragLeaveEvent::sipQDragLeaveEvent(const QDragLeaveEvent& a0): QDragLeaveEvent(a0), sipPySelf(0)
{
}

sipQDragLeaveEvent::~sipQDragLeaveEvent()
{
    sipCommonDtor(sipPySelf);
}


/* Call the instance's destructor. */
extern "C" {static void release_QDragLeaveEvent(void *, int);}
static void release_QDragLeaveEvent(void *sipCppV,int sipState)
{
    Py_BEGIN_ALLOW_THREADS

    if (sipState & SIP_DERIVED_CLASS)
        delete reinterpret_cast<sipQDragLeaveEvent *>(sipCppV);
    else
        delete reinterpret_cast<QDragLeaveEvent *>(sipCppV);

    Py_END_ALLOW_THREADS
}


extern "C" {static void assign_QDragLeaveEvent(void *, SIP_SSIZE_T, const void *);}
static void assign_QDragLeaveEvent(void *sipDst, SIP_SSIZE_T sipDstIdx, const void *sipSrc)
{
    reinterpret_cast<QDragLeaveEvent *>(sipDst)[sipDstIdx] = *reinterpret_cast<const QDragLeaveEvent *>(sipSrc);
}


extern "C" {static void *array_QDragLeaveEvent(SIP_SSIZE_T);}
static void *array_QDragLeaveEvent(SIP_SSIZE_T sipNrElem)
{
    return new QDragLeaveEvent[sipNrElem];
}


extern "C" {static void *copy_QDragLeaveEvent(const void *, SIP_SSIZE_T);}
static void *copy_QDragLeaveEvent(const void *sipSrc, SIP_SSIZE_T sipSrcIdx)
{
    return new QDragLeaveEvent(reinterpret_cast<const QDragLeaveEvent *>(sipSrc)[sipSrcIdx]);
}


extern "C" {static void dealloc_QDragLeaveEvent(sipSimpleWrapper *);}
static void dealloc_QDragLeaveEvent(sipSimpleWrapper *sipSelf)
{
    if (sipIsDerived(sipSelf))
        reinterpret_cast<sipQDragLeaveEvent *>(sipGetAddress(sipSelf))->sipPySelf = NULL;

    if (sipIsPyOwned(sipSelf))
    {
        release_QDragLeaveEvent(sipGetAddress(sipSelf),sipSelf->flags);
    }
}


extern "C" {static void *init_type_QDragLeaveEvent(sipSimpleWrapper *, PyObject *, PyObject *, PyObject **, PyObject **, PyObject **);}
static void *init_type_QDragLeaveEvent(sipSimpleWrapper *sipSelf, PyObject *sipArgs, PyObject *sipKwds, PyObject **sipUnused, PyObject **, PyObject **sipParseErr)
{
    sipQDragLeaveEvent *sipCpp = 0;

    {
        if (sipParseKwdArgs(sipParseErr, sipArgs, sipKwds, NULL, sipUnused, ""))
        {
            Py_BEGIN_ALLOW_THREADS
            sipCpp = new sipQDragLeaveEvent();
            Py_END_ALLOW_THREADS

            sipCpp->sipPySelf = sipSelf;

            return sipCpp;
        }
    }

    {
        const QDragLeaveEvent* a0;

        if (sipParseKwdArgs(sipParseErr, sipArgs, sipKwds, NULL, sipUnused, "J9", sipType_QDragLeaveEvent, &a0))
        {
            Py_BEGIN_ALLOW_THREADS
            sipCpp = new sipQDragLeaveEvent(*a0);
            Py_END_ALLOW_THREADS

            sipCpp->sipPySelf = sipSelf;

            return sipCpp;
        }
    }

    return NULL;
}


/* Define this type's super-types. */
static sipEncodedTypeDef supers_QDragLeaveEvent[] = {{52, 0, 1}};

PyDoc_STRVAR(doc_QDragLeaveEvent, "\1QDragLeaveEvent()\n"
    "QDragLeaveEvent(QDragLeaveEvent)");


pyqt4ClassTypeDef sipTypeDef_QtGui_QDragLeaveEvent = {
{
    {
        -1,
        0,
        0,
        SIP_TYPE_SCC|SIP_TYPE_CLASS,
        sipNameNr_QDragLeaveEvent,
        {0}
    },
    {
        sipNameNr_QDragLeaveEvent,
        {0, 0, 1},
        0, 0,
        0, 0,
        0, 0,
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    },
    doc_QDragLeaveEvent,
    -1,
    -1,
    supers_QDragLeaveEvent,
    0,
    init_type_QDragLeaveEvent,
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
    dealloc_QDragLeaveEvent,
    assign_QDragLeaveEvent,
    array_QDragLeaveEvent,
    copy_QDragLeaveEvent,
    release_QDragLeaveEvent,
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