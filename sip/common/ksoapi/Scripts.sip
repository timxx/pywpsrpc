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
};
