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
    struct TablesOfAuthorities : public IDispatch /Abstract/
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

        virtual HRESULT get_Format(
            WdToaFormat *prop /Out/) = 0;

        virtual HRESULT put_Format(
            WdToaFormat prop) = 0;

        virtual HRESULT Item(
            long Index,
            TableOfAuthorities **prop /Out/) = 0;

        TableOfAuthorities* __getitem__(long index) const;
        %MethodCode
            wpsapi::TableOfAuthorities *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            Range *Range,
            VARIANT *Category = argMissing(),
            VARIANT *Bookmark = argMissing(),
            VARIANT *Passim = argMissing(),
            VARIANT *KeepEntryFormatting = argMissing(),
            VARIANT *Separator = argMissing(),
            VARIANT *IncludeSequenceName = argMissing(),
            VARIANT *EntrySeparator = argMissing(),
            VARIANT *PageRangeSeparator = argMissing(),
            VARIANT *IncludeCategoryHeader = argMissing(),
            VARIANT *PageNumberSeparator = argMissing(),
            TableOfAuthorities **prop /Out/ = 0) = 0;

        virtual HRESULT NextCitation(
            BSTR ShortCitation) = 0;

        virtual HRESULT MarkCitation(
            Range *Range,
            BSTR ShortCitation,
            VARIANT *LongCitation = argMissing(),
            VARIANT *LongCitationAutoText = argMissing(),
            VARIANT *Category = argMissing(),
            Field **prop /Out/ = 0) = 0;

        virtual HRESULT MarkAllCitations(
            BSTR ShortCitation,
            VARIANT *LongCitation = argMissing(),
            VARIANT *LongCitationAutoText = argMissing(),
            VARIANT *Category = argMissing()) = 0;

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

        WdToaFormat getFormat();
        %MethodCode
            wpsapi::WdToaFormat prop = (wpsapi::WdToaFormat)0;
            HRESULT hr = sipCpp->get_Format(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Format()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormat(WdToaFormat prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Format(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Format()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Format, get=getFormat, set=setFormat)
    };
};
