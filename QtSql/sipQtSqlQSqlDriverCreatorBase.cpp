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

#include "sipAPIQtSql.h"

#line 31 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/sip/QtSql/qsqldatabase.sip"
#include <qsqldatabase.h>
#line 34 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/QtSql/sipQtSqlQSqlDriverCreatorBase.cpp"

#line 31 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/sip/QtSql/qsqldriver.sip"
#include <qsqldriver.h>
#line 38 "/media/dhankar/Dhankar_1/a1_18/a1_______QGIS/QtSql/sipQtSqlQSqlDriverCreatorBase.cpp"


class sipQSqlDriverCreatorBase : public QSqlDriverCreatorBase
{
public:
    sipQSqlDriverCreatorBase();
    sipQSqlDriverCreatorBase(const QSqlDriverCreatorBase&);
    virtual ~sipQSqlDriverCreatorBase();

    /*
     * There is a protected method for every virtual method visible from
     * this class.
     */
protected:
    QSqlDriver* createObject() const;

public:
    sipSimpleWrapper *sipPySelf;

private:
    sipQSqlDriverCreatorBase(const sipQSqlDriverCreatorBase &);
    sipQSqlDriverCreatorBase &operator = (const sipQSqlDriverCreatorBase &);

    char sipPyMethods[1];
};

sipQSqlDriverCreatorBase::sipQSqlDriverCreatorBase(): QSqlDriverCreatorBase(), sipPySelf(0)
{
    memset(sipPyMethods, 0, sizeof (sipPyMethods));
}

sipQSqlDriverCreatorBase::sipQSqlDriverCreatorBase(const QSqlDriverCreatorBase& a0): QSqlDriverCreatorBase(a0), sipPySelf(0)
{
    memset(sipPyMethods, 0, sizeof (sipPyMethods));
}

sipQSqlDriverCreatorBase::~sipQSqlDriverCreatorBase()
{
    sipCommonDtor(sipPySelf);
}

QSqlDriver* sipQSqlDriverCreatorBase::createObject() const
{
    sip_gilstate_t sipGILState;
    PyObject *sipMeth;

    sipMeth = sipIsPyMethod(&sipGILState,const_cast<char *>(&sipPyMethods[0]),sipPySelf,sipName_QSqlDriverCreatorBase,sipName_createObject);

    if (!sipMeth)
        return 0;

    extern QSqlDriver* sipVH_QtSql_20(sip_gilstate_t, sipVirtErrorHandlerFunc, sipSimpleWrapper *, PyObject *);

    return sipVH_QtSql_20(sipGILState, 0, sipPySelf, sipMeth);
}


PyDoc_STRVAR(doc_QSqlDriverCreatorBase_createObject, "createObject(self) -> QSqlDriver");

extern "C" {static PyObject *meth_QSqlDriverCreatorBase_createObject(PyObject *, PyObject *);}
static PyObject *meth_QSqlDriverCreatorBase_createObject(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = NULL;
    PyObject *sipOrigSelf = sipSelf;

    {
        const QSqlDriverCreatorBase *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_QSqlDriverCreatorBase, &sipCpp))
        {
            QSqlDriver*sipRes;

            if (!sipOrigSelf)
            {
                sipAbstractMethod(sipName_QSqlDriverCreatorBase, sipName_createObject);
                return NULL;
            }

            Py_BEGIN_ALLOW_THREADS
            sipRes = sipCpp->createObject();
            Py_END_ALLOW_THREADS

            return sipConvertFromNewType(sipRes,sipType_QSqlDriver,NULL);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_QSqlDriverCreatorBase, sipName_createObject, doc_QSqlDriverCreatorBase_createObject);

    return NULL;
}


/* Call the instance's destructor. */
extern "C" {static void release_QSqlDriverCreatorBase(void *, int);}
static void release_QSqlDriverCreatorBase(void *sipCppV,int sipState)
{
    Py_BEGIN_ALLOW_THREADS

    if (sipState & SIP_DERIVED_CLASS)
        delete reinterpret_cast<sipQSqlDriverCreatorBase *>(sipCppV);
    else
        delete reinterpret_cast<QSqlDriverCreatorBase *>(sipCppV);

    Py_END_ALLOW_THREADS
}


extern "C" {static void dealloc_QSqlDriverCreatorBase(sipSimpleWrapper *);}
static void dealloc_QSqlDriverCreatorBase(sipSimpleWrapper *sipSelf)
{
    if (sipIsDerived(sipSelf))
        reinterpret_cast<sipQSqlDriverCreatorBase *>(sipGetAddress(sipSelf))->sipPySelf = NULL;

    if (sipIsPyOwned(sipSelf))
    {
        release_QSqlDriverCreatorBase(sipGetAddress(sipSelf),sipSelf->flags);
    }
}


extern "C" {static void *init_type_QSqlDriverCreatorBase(sipSimpleWrapper *, PyObject *, PyObject *, PyObject **, PyObject **, PyObject **);}
static void *init_type_QSqlDriverCreatorBase(sipSimpleWrapper *sipSelf, PyObject *sipArgs, PyObject *sipKwds, PyObject **sipUnused, PyObject **, PyObject **sipParseErr)
{
    sipQSqlDriverCreatorBase *sipCpp = 0;

    {
        if (sipParseKwdArgs(sipParseErr, sipArgs, sipKwds, NULL, sipUnused, ""))
        {
            Py_BEGIN_ALLOW_THREADS
            sipCpp = new sipQSqlDriverCreatorBase();
            Py_END_ALLOW_THREADS

            sipCpp->sipPySelf = sipSelf;

            return sipCpp;
        }
    }

    {
        const QSqlDriverCreatorBase* a0;

        if (sipParseKwdArgs(sipParseErr, sipArgs, sipKwds, NULL, sipUnused, "J9", sipType_QSqlDriverCreatorBase, &a0))
        {
            Py_BEGIN_ALLOW_THREADS
            sipCpp = new sipQSqlDriverCreatorBase(*a0);
            Py_END_ALLOW_THREADS

            sipCpp->sipPySelf = sipSelf;

            return sipCpp;
        }
    }

    return NULL;
}


static PyMethodDef methods_QSqlDriverCreatorBase[] = {
    {SIP_MLNAME_CAST(sipName_createObject), meth_QSqlDriverCreatorBase_createObject, METH_VARARGS, SIP_MLDOC_CAST(doc_QSqlDriverCreatorBase_createObject)}
};

PyDoc_STRVAR(doc_QSqlDriverCreatorBase, "\1QSqlDriverCreatorBase()\n"
    "QSqlDriverCreatorBase(QSqlDriverCreatorBase)");


pyqt4ClassTypeDef sipTypeDef_QtSql_QSqlDriverCreatorBase = {
{
    {
        -1,
        0,
        0,
        SIP_TYPE_ABSTRACT|SIP_TYPE_CLASS,
        sipNameNr_QSqlDriverCreatorBase,
        {0}
    },
    {
        sipNameNr_QSqlDriverCreatorBase,
        {0, 0, 1},
        1, methods_QSqlDriverCreatorBase,
        0, 0,
        0, 0,
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    },
    doc_QSqlDriverCreatorBase,
    sipNameNr_PyQt4_QtCore_pyqtWrapperType,
    -1,
    0,
    0,
    init_type_QSqlDriverCreatorBase,
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
    dealloc_QSqlDriverCreatorBase,
    0,
    0,
    0,
    release_QSqlDriverCreatorBase,
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
