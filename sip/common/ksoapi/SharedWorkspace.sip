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
    struct SharedWorkspace : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR Name) = 0;

        virtual HRESULT get_Members(
            SharedWorkspaceMembers **ppMembers /Out/) = 0;

        virtual HRESULT get_Tasks(
            SharedWorkspaceTasks **ppTasks /Out/) = 0;

        virtual HRESULT get_Files(
            SharedWorkspaceFiles **ppFiles /Out/) = 0;

        virtual HRESULT get_Folders(
            SharedWorkspaceFolders **ppFolders /Out/) = 0;

        virtual HRESULT get_Links(
            SharedWorkspaceLinks **ppLinks /Out/) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT CreateNew(
            VARIANT URL = argMissing2(),
            VARIANT Name = argMissing2()) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_URL(
            BSTR *pbstrUrl /Out/) = 0;

        virtual HRESULT get_Connected(
            VARIANT_BOOL *pfConnected /Out/) = 0;

        virtual HRESULT get_LastRefreshed(
            VARIANT *pvarLastRefreshed /Out/) = 0;

        virtual HRESULT get_SourceURL(
            BSTR *pbstrSourceURL /Out/) = 0;

        virtual HRESULT put_SourceURL(
            BSTR pbstrSourceURL) = 0;

        virtual HRESULT RemoveDocument() = 0;

        virtual HRESULT Disconnect() = 0;

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

        SharedWorkspaceMembers* getMembers();
        %MethodCode
            ksoapi::SharedWorkspaceMembers *prop = nullptr;
            HRESULT hr = sipCpp->get_Members(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Members()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Members, get=getMembers)

        SharedWorkspaceTasks* getTasks();
        %MethodCode
            ksoapi::SharedWorkspaceTasks *prop = nullptr;
            HRESULT hr = sipCpp->get_Tasks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tasks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Tasks, get=getTasks)

        SharedWorkspaceFiles* getFiles();
        %MethodCode
            ksoapi::SharedWorkspaceFiles *prop = nullptr;
            HRESULT hr = sipCpp->get_Files(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Files()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Files, get=getFiles)

        SharedWorkspaceFolders* getFolders();
        %MethodCode
            ksoapi::SharedWorkspaceFolders *prop = nullptr;
            HRESULT hr = sipCpp->get_Folders(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Folders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Folders, get=getFolders)

        SharedWorkspaceLinks* getLinks();
        %MethodCode
            ksoapi::SharedWorkspaceLinks *prop = nullptr;
            HRESULT hr = sipCpp->get_Links(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Links()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Links, get=getLinks)

        BSTR getURL();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_URL(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_URL()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=URL, get=getURL)

        VARIANT_BOOL getConnected();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Connected(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Connected()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Connected, get=getConnected)

        VARIANT getLastRefreshed();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_LastRefreshed(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LastRefreshed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LastRefreshed, get=getLastRefreshed)

        BSTR getSourceURL();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SourceURL(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceURL()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSourceURL(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SourceURL(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SourceURL()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SourceURL, get=getSourceURL, set=setSourceURL)
    };
};
