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
    struct IDocumentInspector : public IUnknown /Abstract/
    {
    public:
        virtual HRESULT GetInfo(
            BSTR *Name /Out/,
            BSTR *Desc /Out/) = 0;

        virtual HRESULT Inspect(
            IDispatch *Doc,
            MsoDocInspectorStatus *Status /Out/,
            BSTR *Result /Out/,
            BSTR *Action /Out/) = 0;

        virtual HRESULT Fix(
            IDispatch *Doc,
            long hwnd,
            MsoDocInspectorStatus *Status /Out/,
            BSTR *Result /Out/) = 0;

    };
};
