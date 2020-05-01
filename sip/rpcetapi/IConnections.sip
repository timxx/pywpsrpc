/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IConnections : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT _AddFromFile(
            BSTR Filename,
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            BSTR Description,
            VARIANT ConnectionString,
            VARIANT CommandText,
            VARIANT lCmdtype = argMissing2(),
            WorkbookConnection **RHS /Out/ = 0) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            WorkbookConnection **RHS /Out/) = 0;

        WorkbookConnection* __getitem__(VARIANT index) const;
        %MethodCode
            etapi::WorkbookConnection *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get__Default(
            VARIANT Index,
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT Add2(
            BSTR Name,
            BSTR Description,
            VARIANT ConnectionString,
            VARIANT CommandText,
            VARIANT lCmdtype = argMissing2(),
            VARIANT CreateModelConnection = argMissing2(),
            VARIANT ImportRelationships = argMissing2(),
            WorkbookConnection **RHS /Out/ = 0) = 0;

        virtual HRESULT AddFromFile(
            BSTR Filename,
            VARIANT CreateModelConnection = argMissing2(),
            VARIANT ImportRelationships = argMissing2(),
            WorkbookConnection **RHS /Out/ = 0) = 0;

    };
};
