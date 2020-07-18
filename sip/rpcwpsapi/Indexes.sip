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
    struct Indexes : public IDispatch /Abstract/
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
            WdIndexFormat *prop /Out/) = 0;

        virtual HRESULT put_Format(
            WdIndexFormat prop) = 0;

        virtual HRESULT Item(
            long index,
            Index **prop /Out/) = 0;

        Index* __getitem__(long index) const;
        %MethodCode
            wpsapi::Index *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT AddOld(
            Range *Range,
            VARIANT *HeadingSeparator = argMissing(),
            VARIANT *RightAlignPageNumbers = argMissing(),
            VARIANT *Type = argMissing(),
            VARIANT *NumberOfColumns = argMissing(),
            VARIANT *AccentedLetters = argMissing(),
            Index **prop /Out/ = 0) = 0;

        virtual HRESULT MarkEntry(
            Range *Range,
            VARIANT *Entry = argMissing(),
            VARIANT *EntryAutoText = argMissing(),
            VARIANT *CrossReference = argMissing(),
            VARIANT *CrossReferenceAutoText = argMissing(),
            VARIANT *BookmarkName = argMissing(),
            VARIANT *Bold = argMissing(),
            VARIANT *Italic = argMissing(),
            VARIANT *Reading = argMissing(),
            Field **prop /Out/ = 0) = 0;

        virtual HRESULT MarkAllEntries(
            Range *Range,
            VARIANT *Entry = argMissing(),
            VARIANT *EntryAutoText = argMissing(),
            VARIANT *CrossReference = argMissing(),
            VARIANT *CrossReferenceAutoText = argMissing(),
            VARIANT *BookmarkName = argMissing(),
            VARIANT *Bold = argMissing(),
            VARIANT *Italic = argMissing()) = 0;

        virtual HRESULT AutoMarkEntries(
            BSTR ConcordanceFileName) = 0;

        virtual HRESULT Add(
            Range *Range,
            VARIANT *HeadingSeparator = argMissing(),
            VARIANT *RightAlignPageNumbers = argMissing(),
            VARIANT *Type = argMissing(),
            VARIANT *NumberOfColumns = argMissing(),
            VARIANT *AccentedLetters = argMissing(),
            VARIANT *SortBy = argMissing(),
            VARIANT *IndexLanguage = argMissing(),
            Index **prop /Out/ = 0) = 0;

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

        WdIndexFormat getFormat();
        %MethodCode
            wpsapi::WdIndexFormat prop = (wpsapi::WdIndexFormat)0;
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

        PyObject* setFormat(WdIndexFormat prop);
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
