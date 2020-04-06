/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

%MappedType QString /TypeHint="str",TypeHintValue="''"/
{
%TypeHeaderCode
#include <QtCore/QString>
#include <QtCore/QVector>
%End

%ConvertToTypeCode
    if (sipIsErr == nullptr)
        return PyUnicode_Check(sipPy);

    int char_size = 0;
    Py_ssize_t len = 0;
    void *data = sipUnicodeData(sipPy, &char_size, &len);

    switch (char_size)
    {
    case 1:
        *sipCppPtr = new QString(QString::fromLatin1(reinterpret_cast<char *>(data), len));
        break;

    case 2:
        *sipCppPtr = new QString(QString(reinterpret_cast<QChar *>(data), len));
        break;

    case 4:
        *sipCppPtr = new QString(QString::fromUcs4(reinterpret_cast<uint *>(data), len));
        break;
    }

    return sipGetState(sipTransferObj);
%End

%ConvertFromTypeCode
    if (sipCpp->isEmpty())
        return Py_None;

    QVector<uint> ucs4 = sipCpp->toUcs4();
    uint maxChar = 0x7F;

    for (uint ch : ucs4)
    {
        if (ch > maxChar)
        {
            if (ch <= 0xFF)
            {
                maxChar = 0xFF;
            }
            else if (ch <= 0xFFFF)
            {
                maxChar = 0xFFFF;
            }
            else
            {
                maxChar = 0x10FFFF;
                break;
            }
        }
    }

    int kind = 0;
    void *data = nullptr;
    PyObject *obj = sipUnicodeNew(ucs4.size(), maxChar, &kind, &data);
    if (!obj)
        return nullptr;

    for (size_t i = 0; i < ucs4.size(); ++i)
        sipUnicodeWrite(kind, data, i, ucs4[i]);

    return obj;
%End
};

namespace wpsapi
{
    class _Application_extend /Abstract/
    {
    public:
        virtual bool insertDocumentField(QString id) = 0;
        virtual bool setDocumentField(QString id, QString value) = 0;
        virtual QString getAllDocumentField() = 0;
        virtual bool deleteDocumentField(QString id, bool prop = true) = 0;
        virtual bool showDocumentField(QString id, bool enable) = 0;
        virtual QString getDocumentFieldValue(QString id) = 0;
        virtual bool enableDocumentField(QString id, bool enable) = 0;
        virtual bool insertDocument(QString id, QString fileNameURL) = 0;
        virtual bool isExists(QString id) = 0;
        virtual bool DocFieldsProtectExcept(int type, QString Password = "") = 0;
        virtual bool setDocumentMultiField(QString id, QString value, bool enable, QString split = "@#_*@") = 0;
        virtual bool deleteDocumentMultiField(QString id, QString split, bool enable) = 0;
        virtual bool showDocumentMultiField(QString id, QString split, bool enable) = 0;
        virtual bool cursorToDocumentField(QString id, int position) = 0;
        virtual int SetShowHide(bool showhide) = 0;
        virtual bool createDocument(QString type) = 0;
        virtual bool openDocument(QString fileName, bool readOnly, QString PasswordDocument = "") = 0;
        virtual bool saveAs(QString fileName = "") = 0;
        virtual bool setToolbarAllVisible(bool enable) = 0;
        virtual bool showCommandByName(QString barName, int index, bool visible) = 0;
        virtual bool setForceBackUpEnabled(bool enable) = 0;
        virtual bool getForceBackUpEnabled() = 0;
    };
};