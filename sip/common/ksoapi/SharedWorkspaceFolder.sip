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
    struct SharedWorkspaceFolder : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_FolderName(
            BSTR *FolderName /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT DeleteEventIfFolderContainsFiles = argMissing2()) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

    };
};
