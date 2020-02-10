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

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Script **Item /Out/) = 0;

        virtual HRESULT Add(
            IDispatch *Anchor,
            MsoScriptLocation Location,
            MsoScriptLanguage Language,
            BSTR Id,
            BSTR Extended,
            BSTR ScriptText,
            Script **Add /Out/) = 0;

        virtual HRESULT Delete() = 0;
    };

    struct Script : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Extended(
            BSTR *Extended /Out/) = 0;

        virtual HRESULT put_Extended(
            BSTR Extended) = 0;

        virtual HRESULT get_Id(
            BSTR *Id /Out/) = 0;

        virtual HRESULT put_Id(
            BSTR Id) = 0;

        virtual HRESULT get_Language(
            MsoScriptLanguage *Language /Out/) = 0;

        virtual HRESULT put_Language(
            MsoScriptLanguage Language) = 0;

        virtual HRESULT get_Location(
            MsoScriptLocation *Location /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Shape(
            IDispatch **Object /Out/) = 0;

        virtual HRESULT get_ScriptText(
            BSTR *Script /Out/) = 0;

        virtual HRESULT put_ScriptText(
            BSTR Script) = 0;
    };
};