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

#include "sipAPIQtMultimedia.h"

#line 118 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/sip/QtMultimedia/qaudioformat.sip"
#include <qaudioformat.h>
#line 34 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/QtMultimedia/sipQtMultimediaQList0100QAudioFormatEndian.cpp"

#line 33 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/sip/QtMultimedia/qaudioformat.sip"
#include <qaudioformat.h>
#line 38 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/QtMultimedia/sipQtMultimediaQList0100QAudioFormatEndian.cpp"


extern "C" {static void assign_QList_0100QAudioFormat_Endian(void *, SIP_SSIZE_T, const void *);}
static void assign_QList_0100QAudioFormat_Endian(void *sipDst, SIP_SSIZE_T sipDstIdx, const void *sipSrc)
{
    reinterpret_cast<QList<QAudioFormat::Endian> *>(sipDst)[sipDstIdx] = *reinterpret_cast<const QList<QAudioFormat::Endian> *>(sipSrc);
}


extern "C" {static void *array_QList_0100QAudioFormat_Endian(SIP_SSIZE_T);}
static void *array_QList_0100QAudioFormat_Endian(SIP_SSIZE_T sipNrElem)
{
    return new QList<QAudioFormat::Endian>[sipNrElem];
}


extern "C" {static void *copy_QList_0100QAudioFormat_Endian(const void *, SIP_SSIZE_T);}
static void *copy_QList_0100QAudioFormat_Endian(const void *sipSrc, SIP_SSIZE_T sipSrcIdx)
{
    return new QList<QAudioFormat::Endian>(reinterpret_cast<const QList<QAudioFormat::Endian> *>(sipSrc)[sipSrcIdx]);
}


/* Call the mapped type's destructor. */
extern "C" {static void release_QList_0100QAudioFormat_Endian(void *, int);}
static void release_QList_0100QAudioFormat_Endian(void *ptr, int)
{
    Py_BEGIN_ALLOW_THREADS
    delete reinterpret_cast<QList<QAudioFormat::Endian> *>(ptr);
    Py_END_ALLOW_THREADS
}



extern "C" {static int convertTo_QList_0100QAudioFormat_Endian(PyObject *, void **, int *, PyObject *);}
static int convertTo_QList_0100QAudioFormat_Endian(PyObject *sipPy,void **sipCppPtrV,int *sipIsErr,PyObject *sipTransferObj)
{
    QList<QAudioFormat::Endian> **sipCppPtr = reinterpret_cast<QList<QAudioFormat::Endian> **>(sipCppPtrV);

#line 148 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/sip/QtMultimedia/qaudioformat.sip"
    // Check the type if that is all that is required.
    if (sipIsErr == NULL)
    {
        if (!PyList_Check(sipPy))
            return 0;

        for (SIP_SSIZE_T i = 0; i < PyList_GET_SIZE(sipPy); ++i)
            if (!sipCanConvertToEnum(PyList_GET_ITEM(sipPy, i), sipType_QAudioFormat_Endian))
                return 0;

        return 1;
    }

    QList<QAudioFormat::Endian> *ql = new QList<QAudioFormat::Endian>;
 
    for (SIP_SSIZE_T i = 0; i < PyList_GET_SIZE(sipPy); ++i)
    {
        long l = SIPLong_AsLong(PyList_GET_ITEM(sipPy, i));
        ql->append(static_cast<QAudioFormat::Endian>(l));
    }
 
    *sipCppPtr = ql;
 
    return sipGetState(sipTransferObj);
#line 103 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/QtMultimedia/sipQtMultimediaQList0100QAudioFormatEndian.cpp"
}


extern "C" {static PyObject *convertFrom_QList_0100QAudioFormat_Endian(void *, PyObject *);}
static PyObject *convertFrom_QList_0100QAudioFormat_Endian(void *sipCppV, PyObject *)
{
   QList<QAudioFormat::Endian> *sipCpp = reinterpret_cast<QList<QAudioFormat::Endian> *>(sipCppV);

#line 122 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/sip/QtMultimedia/qaudioformat.sip"
    // Create the list.
    PyObject *l;

    if ((l = PyList_New(sipCpp->size())) == NULL)
        return NULL;

    // Set the list elements.
    for (int i = 0; i < sipCpp->size(); ++i)
    {
        QAudioFormat::Endian e = sipCpp->at(i);
        PyObject *eobj;

        if ((eobj = sipConvertFromEnum(e, sipType_QAudioFormat_Endian)) == NULL)
        {
            Py_DECREF(l);

            return NULL;
        }

        PyList_SET_ITEM(l, i, eobj);
    }

    return l;
#line 136 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/QtMultimedia/sipQtMultimediaQList0100QAudioFormatEndian.cpp"
}


sipMappedTypeDef sipTypeDef_QtMultimedia_QList_0100QAudioFormat_Endian = {
    {
        -1,
        0,
        0,
        SIP_TYPE_MAPPED,
        sipNameNr_370,
        {0}
    },
    {
        -1,
        {0, 0, 1},
        0, 0,
        0, 0,
        0, 0,
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    },
    assign_QList_0100QAudioFormat_Endian,
    array_QList_0100QAudioFormat_Endian,
    copy_QList_0100QAudioFormat_Endian,
    release_QList_0100QAudioFormat_Endian,
    convertTo_QList_0100QAudioFormat_Endian,
    convertFrom_QList_0100QAudioFormat_Endian
};