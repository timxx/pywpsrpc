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
    struct HeadersFooters : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_DateAndTime(
            HeaderFooter **DateAndTime /Out/) = 0;

        virtual HRESULT get_SlideNumber(
            HeaderFooter **SlideNumber /Out/) = 0;

        virtual HRESULT get_Header(
            HeaderFooter **Header /Out/) = 0;

        virtual HRESULT get_Footer(
            HeaderFooter **Footer /Out/) = 0;

        virtual HRESULT get_DisplayOnTitleSlide(
            MsoTriState *DisplayOnTitleSlide /Out/) = 0;

        virtual HRESULT put_DisplayOnTitleSlide(
            MsoTriState DisplayOnTitleSlide) = 0;

        virtual HRESULT Clear() = 0;

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

        HeaderFooter* getDateAndTime();
        %MethodCode
            wppapi::HeaderFooter *prop = nullptr;
            HRESULT hr = sipCpp->get_DateAndTime(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DateAndTime()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DateAndTime, get=getDateAndTime)

        HeaderFooter* getSlideNumber();
        %MethodCode
            wppapi::HeaderFooter *prop = nullptr;
            HRESULT hr = sipCpp->get_SlideNumber(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlideNumber, get=getSlideNumber)

        HeaderFooter* getHeader();
        %MethodCode
            wppapi::HeaderFooter *prop = nullptr;
            HRESULT hr = sipCpp->get_Header(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Header()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Header, get=getHeader)

        HeaderFooter* getFooter();
        %MethodCode
            wppapi::HeaderFooter *prop = nullptr;
            HRESULT hr = sipCpp->get_Footer(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Footer()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Footer, get=getFooter)

        MsoTriState getDisplayOnTitleSlide();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_DisplayOnTitleSlide(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayOnTitleSlide()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayOnTitleSlide(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayOnTitleSlide(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayOnTitleSlide()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayOnTitleSlide, get=getDisplayOnTitleSlide, set=setDisplayOnTitleSlide)
    };
};
