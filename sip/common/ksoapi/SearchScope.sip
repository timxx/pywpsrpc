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
    struct SearchScope : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Type(
            MsoSearchIn *MsoSearchInRetVal /Out/) = 0;

        virtual HRESULT get_ScopeFolder(
            ScopeFolder **ScopeFolderRet /Out/) = 0;

    };
};
