/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct CoAuthoring : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Authors(
            CoAuthors **prop /Out/) = 0;

        virtual HRESULT get_Me(
            CoAuthor **prop /Out/) = 0;

        virtual HRESULT get_PendingUpdates(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Locks(
            CoAuthLocks **prop /Out/) = 0;

        virtual HRESULT get_Updates(
            CoAuthUpdates **prop /Out/) = 0;

        virtual HRESULT get_Conflicts(
            Conflicts **prop /Out/) = 0;

        virtual HRESULT get_CanShare(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_CanMerge(
            VARIANT_BOOL *prop /Out/) = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        CoAuthors* getAuthors();
        %MethodCode
            wpsapi::CoAuthors *prop = nullptr;
            HRESULT hr = sipCpp->get_Authors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Authors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Authors, get=getAuthors)

        CoAuthor* getMe();
        %MethodCode
            wpsapi::CoAuthor *prop = nullptr;
            HRESULT hr = sipCpp->get_Me(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Me()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Me, get=getMe)

        VARIANT_BOOL getPendingUpdates();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PendingUpdates(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PendingUpdates()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PendingUpdates, get=getPendingUpdates)

        CoAuthLocks* getLocks();
        %MethodCode
            wpsapi::CoAuthLocks *prop = nullptr;
            HRESULT hr = sipCpp->get_Locks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Locks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Locks, get=getLocks)

        CoAuthUpdates* getUpdates();
        %MethodCode
            wpsapi::CoAuthUpdates *prop = nullptr;
            HRESULT hr = sipCpp->get_Updates(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Updates()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Updates, get=getUpdates)

        Conflicts* getConflicts();
        %MethodCode
            wpsapi::Conflicts *prop = nullptr;
            HRESULT hr = sipCpp->get_Conflicts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Conflicts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Conflicts, get=getConflicts)

        VARIANT_BOOL getCanShare();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CanShare(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CanShare()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CanShare, get=getCanShare)

        VARIANT_BOOL getCanMerge();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CanMerge(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CanMerge()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CanMerge, get=getCanMerge)
    };
};
