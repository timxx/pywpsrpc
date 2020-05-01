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
    struct FileConverters : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT Item(
            VARIANT Index,
            FileConverter **Item /Out/) = 0;

        FileConverter* __getitem__(VARIANT index) const;
        %MethodCode
            wppapi::FileConverter *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

    };
};
