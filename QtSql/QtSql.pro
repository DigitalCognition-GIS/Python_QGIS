TEMPLATE = lib
CONFIG += warn_on plugin
QT += sql widgets
CONFIG += release
CONFIG -= android_install

win32 {
    PY_MODULE = QtSql.pyd
    target.files = QtSql.pyd
    LIBS += -L/home/dhankar/anaconda2/lib -lpython27
} else {
    PY_MODULE = QtSql.so
    target.files = QtSql.so
}

target.CONFIG = no_check_exist
target.path = /home/dhankar/anaconda2/lib/python2.7/site-packages/PyQt4
INSTALLS += target
sip.path = /home/dhankar/anaconda2/share/sip/PyQt4/QtSql
sip.files = ../sip/QtSql/QtSqlmod.sip ../sip/QtSql/qsqlrelationaltablemodel.sip ../sip/QtSql/qsqlresult.sip ../sip/QtSql/qsqlquery.sip ../sip/QtSql/qsqldriver.sip ../sip/QtSql/qsqlerror.sip ../sip/QtSql/qsql.sip ../sip/QtSql/qsqlrecord.sip ../sip/QtSql/qsqlfield.sip ../sip/QtSql/qsqldatabase.sip ../sip/QtSql/qsqlindex.sip ../sip/QtSql/qsqlquerymodel.sip ../sip/QtSql/qsqltablemodel.sip ../sip/QtSql/qsqlrelationaldelegate.sip
INSTALLS += sip
QMAKE_CXXFLAGS += -fno-exceptions
QMAKE_LFLAGS += -Wl,--version-script=QtSql.exp
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

TARGET = QtSql
HEADERS = sipAPIQtSql.h
SOURCES = sipQtSqlQVector0100QVariant.cpp sipQtSqlQSql.cpp sipQtSqlQSqlDriverCreatorBase.cpp sipQtSqlQSqlDriver.cpp sipQtSqlQSqlField.cpp sipQtSqlQSqlQueryModel.cpp sipQtSqlQSqlError.cpp sipQtSqlQSqlDatabase.cpp sipQtSqlQSqlRelationalTableModel.cpp sipQtSqlcmodule.cpp sipQtSqlQSqlRecord.cpp sipQtSqlQSqlIndex.cpp sipQtSqlQSqlParamType.cpp sipQtSqlQSqlResult.cpp sipQtSqlQSqlQuery.cpp sipQtSqlQSqlTableModel.cpp sipQtSqlQSqlRelationalDelegate.cpp sipQtSqlQSqlRelation.cpp
