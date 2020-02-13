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
    struct ScopeFolder : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT get_Path(
            BSTR *pbstrPath /Out/) = 0;

        virtual HRESULT get_ScopeFolders(
            ScopeFolders **ScopeFoldersRet /Out/) = 0;

        virtual HRESULT AddToSearchFolders() = 0;

    };
};
