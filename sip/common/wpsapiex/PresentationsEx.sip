/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapiex
{
    struct PresentationsEx : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT OpenFromShm(
            BSTR ShmID,
            VARIANT Password = argMissing2(),
            VARIANT ModifyPassword = argMissing2(),
            int ReadOnly = 0,
            int Untitled = 0,
            int WithWindow = 0,
            PresentationEx **Open /Out/ = 0) = 0;

    };
};
