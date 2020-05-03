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
    struct IFind : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_SearchPath(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_SubDir(
            VARIANT_BOOL *retval /Out/) = 0;

        virtual HRESULT get_Title(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Author(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Keywords(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Subject(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Options(
            MsoFileFindOptions *penmOptions /Out/) = 0;

        virtual HRESULT get_MatchCase(
            VARIANT_BOOL *retval /Out/) = 0;

        virtual HRESULT get_Text(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_PatternMatch(
            VARIANT_BOOL *retval /Out/) = 0;

        virtual HRESULT get_DateSavedFrom(
            VARIANT *pdatSavedFrom /Out/) = 0;

        virtual HRESULT get_DateSavedTo(
            VARIANT *pdatSavedTo /Out/) = 0;

        virtual HRESULT get_SavedBy(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_DateCreatedFrom(
            VARIANT *pdatCreatedFrom /Out/) = 0;

        virtual HRESULT get_DateCreatedTo(
            VARIANT *pdatCreatedTo /Out/) = 0;

        virtual HRESULT get_View(
            MsoFileFindView *penmView /Out/) = 0;

        virtual HRESULT get_SortBy(
            MsoFileFindSortBy *penmSortBy /Out/) = 0;

        virtual HRESULT get_ListBy(
            MsoFileFindListBy *penmListBy /Out/) = 0;

        virtual HRESULT get_SelectedFile(
            int *pintSelectedFile /Out/) = 0;

        virtual HRESULT get_Results(
            IFoundFiles **pdisp /Out/) = 0;

        virtual HRESULT Show(
            int *pRows /Out/) = 0;

        virtual HRESULT put_SearchPath(
            BSTR pbstr) = 0;

        virtual HRESULT put_Name(
            BSTR pbstr) = 0;

        virtual HRESULT put_SubDir(
            VARIANT_BOOL retval) = 0;

        virtual HRESULT put_Title(
            BSTR pbstr) = 0;

        virtual HRESULT put_Author(
            BSTR pbstr) = 0;

        virtual HRESULT put_Keywords(
            BSTR pbstr) = 0;

        virtual HRESULT put_Subject(
            BSTR pbstr) = 0;

        virtual HRESULT put_Options(
            MsoFileFindOptions penmOptions) = 0;

        virtual HRESULT put_MatchCase(
            VARIANT_BOOL retval) = 0;

        virtual HRESULT put_Text(
            BSTR pbstr) = 0;

        virtual HRESULT put_PatternMatch(
            VARIANT_BOOL retval) = 0;

        virtual HRESULT put_DateSavedFrom(
            VARIANT pdatSavedFrom) = 0;

        virtual HRESULT put_DateSavedTo(
            VARIANT pdatSavedTo) = 0;

        virtual HRESULT put_SavedBy(
            BSTR pbstr) = 0;

        virtual HRESULT put_DateCreatedFrom(
            VARIANT pdatCreatedFrom) = 0;

        virtual HRESULT put_DateCreatedTo(
            VARIANT pdatCreatedTo) = 0;

        virtual HRESULT put_View(
            MsoFileFindView penmView) = 0;

        virtual HRESULT put_SortBy(
            MsoFileFindSortBy penmSortBy) = 0;

        virtual HRESULT put_ListBy(
            MsoFileFindListBy penmListBy) = 0;

        virtual HRESULT put_SelectedFile(
            int pintSelectedFile) = 0;

        virtual HRESULT Execute() = 0;

        virtual HRESULT Load(
            BSTR bstrQueryName) = 0;

        virtual HRESULT Save(
            BSTR bstrQueryName) = 0;

        virtual HRESULT Delete(
            BSTR bstrQueryName) = 0;

        virtual HRESULT get_FileType(
            long *plFileType /Out/) = 0;

        virtual HRESULT put_FileType(
            long plFileType) = 0;

        BSTR getSearchPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SearchPath(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SearchPath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSearchPath(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SearchPath(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SearchPath()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SearchPath, get=getSearchPath, set=setSearchPath)

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

        VARIANT_BOOL getSubDir();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SubDir(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SubDir()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubDir(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SubDir(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SubDir()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SubDir, get=getSubDir, set=setSubDir)

        BSTR getTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Title(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Title()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTitle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Title(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Title()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Title, get=getTitle, set=setTitle)

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

        PyObject* setAuthor(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Author(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Author()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Author, get=getAuthor, set=setAuthor)

        BSTR getKeywords();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Keywords(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Keywords()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKeywords(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Keywords(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Keywords()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Keywords, get=getKeywords, set=setKeywords)

        BSTR getSubject();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Subject(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Subject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubject(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Subject(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Subject()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Subject, get=getSubject, set=setSubject)

        MsoFileFindOptions getOptions();
        %MethodCode
            ksoapi::MsoFileFindOptions prop = (ksoapi::MsoFileFindOptions)0;
            HRESULT hr = sipCpp->get_Options(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Options()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOptions(MsoFileFindOptions prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Options(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Options()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Options, get=getOptions, set=setOptions)

        VARIANT_BOOL getMatchCase();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchCase(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchCase()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchCase(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchCase(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchCase()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchCase, get=getMatchCase, set=setMatchCase)

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

        PyObject* setText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Text(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Text()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Text, get=getText, set=setText)

        VARIANT_BOOL getPatternMatch();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PatternMatch(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PatternMatch()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPatternMatch(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PatternMatch(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PatternMatch()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PatternMatch, get=getPatternMatch, set=setPatternMatch)

        VARIANT getDateSavedFrom();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_DateSavedFrom(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DateSavedFrom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDateSavedFrom(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DateSavedFrom(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DateSavedFrom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DateSavedFrom, get=getDateSavedFrom, set=setDateSavedFrom)

        VARIANT getDateSavedTo();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_DateSavedTo(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DateSavedTo()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDateSavedTo(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DateSavedTo(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DateSavedTo()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DateSavedTo, get=getDateSavedTo, set=setDateSavedTo)

        BSTR getSavedBy();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SavedBy(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SavedBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSavedBy(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SavedBy(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SavedBy()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SavedBy, get=getSavedBy, set=setSavedBy)

        VARIANT getDateCreatedFrom();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_DateCreatedFrom(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DateCreatedFrom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDateCreatedFrom(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DateCreatedFrom(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DateCreatedFrom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DateCreatedFrom, get=getDateCreatedFrom, set=setDateCreatedFrom)

        VARIANT getDateCreatedTo();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_DateCreatedTo(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DateCreatedTo()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDateCreatedTo(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DateCreatedTo(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DateCreatedTo()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DateCreatedTo, get=getDateCreatedTo, set=setDateCreatedTo)

        MsoFileFindView getView();
        %MethodCode
            ksoapi::MsoFileFindView prop = (ksoapi::MsoFileFindView)0;
            HRESULT hr = sipCpp->get_View(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_View()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setView(MsoFileFindView prop);
        %MethodCode
            HRESULT hr = sipCpp->put_View(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_View()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=View, get=getView, set=setView)

        MsoFileFindSortBy getSortBy();
        %MethodCode
            ksoapi::MsoFileFindSortBy prop = (ksoapi::MsoFileFindSortBy)0;
            HRESULT hr = sipCpp->get_SortBy(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SortBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSortBy(MsoFileFindSortBy prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SortBy(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SortBy()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SortBy, get=getSortBy, set=setSortBy)

        MsoFileFindListBy getListBy();
        %MethodCode
            ksoapi::MsoFileFindListBy prop = (ksoapi::MsoFileFindListBy)0;
            HRESULT hr = sipCpp->get_ListBy(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setListBy(MsoFileFindListBy prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ListBy(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ListBy()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ListBy, get=getListBy, set=setListBy)

        int getSelectedFile();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_SelectedFile(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SelectedFile()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSelectedFile(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SelectedFile(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SelectedFile()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SelectedFile, get=getSelectedFile, set=setSelectedFile)

        IFoundFiles* getResults();
        %MethodCode
            ksoapi::IFoundFiles *prop = nullptr;
            HRESULT hr = sipCpp->get_Results(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Results()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Results, get=getResults)

        long getFileType();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_FileType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFileType(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FileType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FileType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FileType, get=getFileType, set=setFileType)
    };
};
