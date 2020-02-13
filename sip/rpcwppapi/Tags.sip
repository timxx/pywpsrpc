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
    struct Tags : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Item(
            BSTR Name,
            BSTR *Item /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            BSTR Value) = 0;

        virtual HRESULT Delete(
            BSTR Name) = 0;

        virtual HRESULT AddBinary(
            BSTR Name,
            BSTR FilePath) = 0;

        virtual HRESULT BinaryValue(
            BSTR Name,
            long *BinaryValue /Out/) = 0;

        virtual HRESULT Name(
            int Index,
            BSTR *Name /Out/) = 0;

        virtual HRESULT Value(
            int Index,
            BSTR *Value /Out/) = 0;

    };
};
