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

    };
};
