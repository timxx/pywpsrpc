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
    struct PageNumbers : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_NumberStyle(
            WdPageNumberStyle *prop /Out/) = 0;

        virtual HRESULT put_NumberStyle(
            WdPageNumberStyle prop) = 0;

        virtual HRESULT get_IncludeChapterNumber(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeChapterNumber(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HeadingLevelForChapter(
            long *prop /Out/) = 0;

        virtual HRESULT put_HeadingLevelForChapter(
            long prop) = 0;

        virtual HRESULT get_ChapterPageSeparator(
            WdSeparatorType *prop /Out/) = 0;

        virtual HRESULT put_ChapterPageSeparator(
            WdSeparatorType prop) = 0;

        virtual HRESULT get_RestartNumberingAtSection(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RestartNumberingAtSection(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StartingNumber(
            long *prop /Out/) = 0;

        virtual HRESULT put_StartingNumber(
            long prop) = 0;

        virtual HRESULT get_ShowFirstPageNumber(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowFirstPageNumber(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Item(
            long Index,
            PageNumber **prop /Out/) = 0;

        PageNumber* __getitem__(long index) const;
        %MethodCode
            wpsapi::PageNumber *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            VARIANT *PageNumberAlignment = argMissing(),
            VARIANT *FirstPage = argMissing(),
            PageNumber **prop /Out/ = 0) = 0;

        virtual HRESULT get_DoubleQuote(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DoubleQuote(
            VARIANT_BOOL prop) = 0;

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

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

        WdPageNumberStyle getNumberStyle();
        %MethodCode
            wpsapi::WdPageNumberStyle prop = (wpsapi::WdPageNumberStyle)0;
            HRESULT hr = sipCpp->get_NumberStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberStyle(WdPageNumberStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberStyle, get=getNumberStyle, set=setNumberStyle)

        VARIANT_BOOL getIncludeChapterNumber();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludeChapterNumber(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeChapterNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeChapterNumber(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeChapterNumber(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeChapterNumber()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeChapterNumber, get=getIncludeChapterNumber, set=setIncludeChapterNumber)

        long getHeadingLevelForChapter();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HeadingLevelForChapter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeadingLevelForChapter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeadingLevelForChapter(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeadingLevelForChapter(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeadingLevelForChapter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeadingLevelForChapter, get=getHeadingLevelForChapter, set=setHeadingLevelForChapter)

        WdSeparatorType getChapterPageSeparator();
        %MethodCode
            wpsapi::WdSeparatorType prop = (wpsapi::WdSeparatorType)0;
            HRESULT hr = sipCpp->get_ChapterPageSeparator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChapterPageSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChapterPageSeparator(WdSeparatorType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChapterPageSeparator(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChapterPageSeparator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChapterPageSeparator, get=getChapterPageSeparator, set=setChapterPageSeparator)

        VARIANT_BOOL getRestartNumberingAtSection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RestartNumberingAtSection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RestartNumberingAtSection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRestartNumberingAtSection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RestartNumberingAtSection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RestartNumberingAtSection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RestartNumberingAtSection, get=getRestartNumberingAtSection, set=setRestartNumberingAtSection)

        long getStartingNumber();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_StartingNumber(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StartingNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStartingNumber(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StartingNumber(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StartingNumber()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StartingNumber, get=getStartingNumber, set=setStartingNumber)

        VARIANT_BOOL getShowFirstPageNumber();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowFirstPageNumber(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowFirstPageNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowFirstPageNumber(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowFirstPageNumber(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowFirstPageNumber()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowFirstPageNumber, get=getShowFirstPageNumber, set=setShowFirstPageNumber)

        VARIANT_BOOL getDoubleQuote();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DoubleQuote(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DoubleQuote()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDoubleQuote(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DoubleQuote(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DoubleQuote()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DoubleQuote, get=getDoubleQuote, set=setDoubleQuote)
    };
};
