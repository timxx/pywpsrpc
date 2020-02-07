/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    class _Application_extend /Abstract/
    {
        %TypeHeaderCode
            #include <QString>
            namespace wpsapi {
                #include <wpsapi/wpsapi_extend.h>
            }
        %End
    public:
    /*
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
    */
    };
};