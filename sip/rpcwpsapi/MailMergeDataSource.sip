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

        %Property(name=Name, get=getName)

        BSTR getHeaderSourceName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_HeaderSourceName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeaderSourceName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HeaderSourceName, get=getHeaderSourceName)

        WdMailMergeDataSource getType();
        %MethodCode
            wpsapi::WdMailMergeDataSource prop = (wpsapi::WdMailMergeDataSource)0;
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

        WdMailMergeDataSource getHeaderSourceType();
        %MethodCode
            wpsapi::WdMailMergeDataSource prop = (wpsapi::WdMailMergeDataSource)0;
            HRESULT hr = sipCpp->get_HeaderSourceType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeaderSourceType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HeaderSourceType, get=getHeaderSourceType)

        BSTR getConnectString();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ConnectString(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConnectString()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ConnectString, get=getConnectString)

        BSTR getQueryString();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_QueryString(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_QueryString()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setQueryString(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_QueryString(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_QueryString()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=QueryString, get=getQueryString, set=setQueryString)

        WdMailMergeActiveRecord getActiveRecord();
        %MethodCode
            wpsapi::WdMailMergeActiveRecord prop = (wpsapi::WdMailMergeActiveRecord)0;
            HRESULT hr = sipCpp->get_ActiveRecord(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveRecord()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setActiveRecord(WdMailMergeActiveRecord prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ActiveRecord(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ActiveRecord()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ActiveRecord, get=getActiveRecord, set=setActiveRecord)

        long getFirstRecord();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_FirstRecord(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstRecord()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFirstRecord(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FirstRecord(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FirstRecord()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FirstRecord, get=getFirstRecord, set=setFirstRecord)

        long getLastRecord();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_LastRecord(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LastRecord()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLastRecord(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LastRecord(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LastRecord()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LastRecord, get=getLastRecord, set=setLastRecord)

        MailMergeFieldNames* getFieldNames();
        %MethodCode
            wpsapi::MailMergeFieldNames *prop = nullptr;
            HRESULT hr = sipCpp->get_FieldNames(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FieldNames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FieldNames, get=getFieldNames)

        MailMergeDataFields* getDataFields();
        %MethodCode
            wpsapi::MailMergeDataFields *prop = nullptr;
            HRESULT hr = sipCpp->get_DataFields(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataFields, get=getDataFields)

        long getRecordCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_RecordCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecordCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RecordCount, get=getRecordCount)

        VARIANT_BOOL getIncluded();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Included(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Included()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncluded(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Included(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Included()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Included, get=getIncluded, set=setIncluded)

        VARIANT_BOOL getInvalidAddress();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InvalidAddress(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InvalidAddress()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInvalidAddress(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InvalidAddress(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InvalidAddress()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InvalidAddress, get=getInvalidAddress, set=setInvalidAddress)

        BSTR getInvalidComments();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_InvalidComments(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InvalidComments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInvalidComments(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InvalidComments(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InvalidComments()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InvalidComments, get=getInvalidComments, set=setInvalidComments)

        MappedDataFields* getMappedDataFields();
        %MethodCode
            wpsapi::MappedDataFields *prop = nullptr;
            HRESULT hr = sipCpp->get_MappedDataFields(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MappedDataFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MappedDataFields, get=getMappedDataFields)

        BSTR getTableName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TableName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TableName, get=getTableName)
    };
};
