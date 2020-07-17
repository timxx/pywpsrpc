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

        BSTR getFolderName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FolderName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FolderName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FolderName, get=getFolderName)
    };
};
