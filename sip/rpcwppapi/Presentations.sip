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
    struct Presentations : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Presentation **Item /Out/) = 0;

        virtual HRESULT Add(
            MsoTriState WithWindow,
            Presentation **Add /Out/) = 0;

        virtual HRESULT OpenOld(
            BSTR FileName,
            MsoTriState ReadOnly,
            MsoTriState Untitled,
            MsoTriState WithWindow,
            Presentation **OpenOld /Out/) = 0;

        virtual HRESULT Open(
            BSTR FileName,
            MsoTriState ReadOnly,
            MsoTriState Untitled,
            MsoTriState WithWindow,
            Presentation **Open /Out/) = 0;

        virtual HRESULT CheckOut(
            BSTR FileName) = 0;

        virtual HRESULT CanCheckOut(
            BSTR FileName,
            VARIANT_BOOL *CanCheckOut /Out/) = 0;

        virtual HRESULT Open2007(
            BSTR FileName,
            MsoTriState ReadOnly,
            MsoTriState Untitled,
            MsoTriState WithWindow,
            MsoTriState OpenAndRepair,
            Presentation **Open2007 /Out/) = 0;

    };
};
