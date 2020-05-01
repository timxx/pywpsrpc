/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct Scripts : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            long *Count /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Script **Item /Out/) = 0;

        Script* __getitem__(VARIANT index) const;
        %MethodCode
            ksoapi::Script *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            IDispatch *Anchor,
            MsoScriptLocation Location = ksoapi::msoScriptLocationInHead,
            MsoScriptLanguage Language = ksoapi::msoScriptLanguageVisualBasic,
            BSTR Id = 0,
            BSTR Extended = 0,
            BSTR ScriptText = 0,
            Script **Add /Out/ = 0) = 0;

        virtual HRESULT Delete() = 0;

    };
};
