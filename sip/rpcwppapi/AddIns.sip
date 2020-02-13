/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct AddIns : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            AddIn **Item /Out/) = 0;

        virtual HRESULT Add(
            BSTR FileName,
            AddIn **Add /Out/) = 0;

        virtual HRESULT Remove(
            VARIANT *Index) = 0;

    };
};
