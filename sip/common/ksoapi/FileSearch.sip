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
    struct FileSearch : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_SearchSubFolders(
            VARIANT_BOOL *SearchSubFoldersRetVal /Out/) = 0;

        virtual HRESULT put_SearchSubFolders(
            VARIANT_BOOL SearchSubFoldersRetVal) = 0;

        virtual HRESULT get_MatchTextExactly(
            VARIANT_BOOL *MatchTextRetVal /Out/) = 0;

        virtual HRESULT put_MatchTextExactly(
            VARIANT_BOOL MatchTextRetVal) = 0;

        virtual HRESULT get_MatchAllWordForms(
            VARIANT_BOOL *MatchAllWordFormsRetVal /Out/) = 0;

        virtual HRESULT put_MatchAllWordForms(
            VARIANT_BOOL MatchAllWordFormsRetVal) = 0;

        virtual HRESULT get_FileName(
            BSTR *FileNameRetVal /Out/) = 0;

        virtual HRESULT put_FileName(
            BSTR FileNameRetVal) = 0;

        virtual HRESULT get_FileType(
            MsoFileType *FileTypeRetVal /Out/) = 0;

        virtual HRESULT put_FileType(
            MsoFileType FileTypeRetVal) = 0;

        virtual HRESULT get_LastModified(
            MsoLastModified *LastModifiedRetVal /Out/) = 0;

        virtual HRESULT put_LastModified(
            MsoLastModified LastModifiedRetVal) = 0;

        virtual HRESULT get_TextOrProperty(
            BSTR *TextOrProperty /Out/) = 0;

        virtual HRESULT put_TextOrProperty(
            BSTR TextOrProperty) = 0;

        virtual HRESULT get_LookIn(
            BSTR *LookInRetVal /Out/) = 0;

        virtual HRESULT put_LookIn(
            BSTR LookInRetVal) = 0;

        virtual HRESULT Execute(
            MsoSortBy SortBy = ksoapi::msoSortByNone,
            MsoSortOrder SortOrder = ksoapi::msoSortOrderAscending,
            VARIANT_BOOL AlwaysAccurate = VARIANT_FALSE,
            int *pRet /Out/ = 0) = 0;

        virtual HRESULT NewSearch() = 0;

        virtual HRESULT get_FoundFiles(
            FoundFiles **FoundFilesRet /Out/) = 0;

        virtual HRESULT get_PropertyTests(
            PropertyTests **PropTestsRet /Out/) = 0;

        virtual HRESULT get_SearchScopes(
            SearchScopes **SearchScopesRet /Out/) = 0;

        virtual HRESULT get_SearchFolders(
            SearchFolders **SearchFoldersRet /Out/) = 0;

        virtual HRESULT get_FileTypes(
            FileTypes **FileTypesRet /Out/) = 0;

        virtual HRESULT RefreshScopes() = 0;

    };
};
