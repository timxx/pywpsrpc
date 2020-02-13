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
    struct MailMergeDataSource : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_HeaderSourceName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdMailMergeDataSource *prop /Out/) = 0;

        virtual HRESULT get_HeaderSourceType(
            WdMailMergeDataSource *prop /Out/) = 0;

        virtual HRESULT get_ConnectString(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_QueryString(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_QueryString(
            BSTR prop) = 0;

        virtual HRESULT get_ActiveRecord(
            WdMailMergeActiveRecord *prop /Out/) = 0;

        virtual HRESULT put_ActiveRecord(
            WdMailMergeActiveRecord prop) = 0;

        virtual HRESULT get_FirstRecord(
            long *prop /Out/) = 0;

        virtual HRESULT put_FirstRecord(
            long prop) = 0;

        virtual HRESULT get_LastRecord(
            long *prop /Out/) = 0;

        virtual HRESULT put_LastRecord(
            long prop) = 0;

        virtual HRESULT get_FieldNames(
            MailMergeFieldNames **prop /Out/) = 0;

        virtual HRESULT get_DataFields(
            MailMergeDataFields **prop /Out/) = 0;

        virtual HRESULT FindRecord2000(
            BSTR FindText,
            BSTR Field,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_RecordCount(
            long *prop /Out/) = 0;

        virtual HRESULT get_Included(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Included(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_InvalidAddress(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_InvalidAddress(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_InvalidComments(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_InvalidComments(
            BSTR prop) = 0;

        virtual HRESULT get_MappedDataFields(
            MappedDataFields **prop /Out/) = 0;

        virtual HRESULT get_TableName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT FindRecord(
            BSTR FindText,
            VARIANT *Field = argMissing(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;

        virtual HRESULT SetAllIncludedFlags(
            VARIANT_BOOL Included) = 0;

        virtual HRESULT SetAllErrorFlags(
            VARIANT_BOOL Invalid,
            BSTR InvalidComment) = 0;

        virtual HRESULT Close() = 0;

    };
};
