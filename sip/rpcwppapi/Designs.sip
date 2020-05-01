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
    struct Designs : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Design **Item /Out/) = 0;

        Design* __getitem__(VARIANT index) const;
        %MethodCode
            wppapi::Design *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            BSTR designName,
            int Index = 0,
            Design **Add /Out/ = 0) = 0;

        virtual HRESULT Load(
            BSTR TemplateName,
            int Index = 0,
            Design **Load /Out/ = 0) = 0;

        virtual HRESULT Clone(
            Design *pOriginal,
            int Index = 0,
            Design **Clone /Out/ = 0) = 0;

    };
};
