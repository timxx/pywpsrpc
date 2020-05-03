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

        MsoSearchIn getType();
        %MethodCode
            ksoapi::MsoSearchIn prop = (ksoapi::MsoSearchIn)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Type, get=getType)

        ScopeFolder* getScopeFolder();
        %MethodCode
            ksoapi::ScopeFolder *prop = nullptr;
            HRESULT hr = sipCpp->get_ScopeFolder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScopeFolder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ScopeFolder, get=getScopeFolder)
    };
};
