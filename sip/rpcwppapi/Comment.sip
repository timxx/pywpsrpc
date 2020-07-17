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
    struct Comment : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Author(
            BSTR *Author /Out/) = 0;

        virtual HRESULT get_AuthorInitials(
            BSTR *AuthorInitials /Out/) = 0;

        virtual HRESULT get_Text(
            BSTR *Text /Out/) = 0;

        virtual HRESULT get_DateTime(
            DATE *DateTime /Out/) = 0;

        virtual HRESULT get_AuthorIndex(
            int *AuthorIndex /Out/) = 0;

        virtual HRESULT get_Left(
            single *Left /Out/) = 0;

        virtual HRESULT get_Top(
            single *Top /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_ProviderID(
            BSTR *ProviderID /Out/) = 0;

        virtual HRESULT get_UserID(
            BSTR *UserID /Out/) = 0;

        virtual HRESULT get_TimeZoneBias(
            int *TimeZoneBias /Out/) = 0;

        virtual HRESULT get_Replies(
            Comments **Comments /Out/) = 0;

        virtual HRESULT get_Collapsed(
            VARIANT_BOOL *Comments /Out/) = 0;

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
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

        BSTR getAuthor();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Author(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Author()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Author, get=getAuthor)

        BSTR getAuthorInitials();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AuthorInitials(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AuthorInitials()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AuthorInitials, get=getAuthorInitials)

        BSTR getText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Text(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Text()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Text, get=getText)

        DATE getDateTime();
        %MethodCode
            DATE prop = 0;
            HRESULT hr = sipCpp->get_DateTime(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DateTime()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DateTime, get=getDateTime)

        int getAuthorIndex();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_AuthorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AuthorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AuthorIndex, get=getAuthorIndex)

        single getLeft();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Left(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Left()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Left, get=getLeft)

        single getTop();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Top(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Top()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Top, get=getTop)

        BSTR getProviderID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ProviderID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProviderID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProviderID, get=getProviderID)

        BSTR getUserID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_UserID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UserID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UserID, get=getUserID)

        int getTimeZoneBias();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_TimeZoneBias(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TimeZoneBias()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TimeZoneBias, get=getTimeZoneBias)

        Comments* getReplies();
        %MethodCode
            wppapi::Comments *prop = nullptr;
            HRESULT hr = sipCpp->get_Replies(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Replies()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Replies, get=getReplies)

        VARIANT_BOOL getCollapsed();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Collapsed(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Collapsed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Collapsed, get=getCollapsed)
    };
};
