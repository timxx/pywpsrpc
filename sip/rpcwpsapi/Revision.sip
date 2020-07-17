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
    struct Revision : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Author(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Date(
            DATE *prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdRevisionType *prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT Accept() = 0;

        virtual HRESULT Reject() = 0;

        virtual HRESULT get_Style(
            Style **prop /Out/) = 0;

        virtual HRESULT get_FormatDescription(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_MovedRange(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Cells(
            Cells **prop /Out/) = 0;

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

        DATE getDate();
        %MethodCode
            DATE prop = 0;
            HRESULT hr = sipCpp->get_Date(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Date()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Date, get=getDate)

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

        WdRevisionType getType();
        %MethodCode
            wpsapi::WdRevisionType prop = (wpsapi::WdRevisionType)0;
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

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

        Style* getStyle();
        %MethodCode
            wpsapi::Style *prop = nullptr;
            HRESULT hr = sipCpp->get_Style(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Style()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Style, get=getStyle)

        BSTR getFormatDescription();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FormatDescription(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormatDescription()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FormatDescription, get=getFormatDescription)

        Range* getMovedRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_MovedRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MovedRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MovedRange, get=getMovedRange)

        Cells* getCells();
        %MethodCode
            wpsapi::Cells *prop = nullptr;
            HRESULT hr = sipCpp->get_Cells(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Cells()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Cells, get=getCells)
    };
};
