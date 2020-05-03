/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IProtection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_AllowFormattingCells(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowFormattingColumns(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowFormattingRows(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowInsertingColumns(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowInsertingRows(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowInsertingHyperlinks(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowDeletingColumns(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowDeletingRows(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowSorting(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowFiltering(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowUsingPivotTables(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowEditRanges(
            AllowEditRanges **RHS /Out/) = 0;

        VARIANT_BOOL getAllowFormattingCells();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowFormattingCells(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowFormattingCells()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllowFormattingCells, get=getAllowFormattingCells)

        VARIANT_BOOL getAllowFormattingColumns();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowFormattingColumns(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowFormattingColumns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllowFormattingColumns, get=getAllowFormattingColumns)

        VARIANT_BOOL getAllowFormattingRows();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowFormattingRows(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowFormattingRows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllowFormattingRows, get=getAllowFormattingRows)

        VARIANT_BOOL getAllowInsertingColumns();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowInsertingColumns(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowInsertingColumns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllowInsertingColumns, get=getAllowInsertingColumns)

        VARIANT_BOOL getAllowInsertingRows();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowInsertingRows(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowInsertingRows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllowInsertingRows, get=getAllowInsertingRows)

        VARIANT_BOOL getAllowInsertingHyperlinks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowInsertingHyperlinks(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowInsertingHyperlinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllowInsertingHyperlinks, get=getAllowInsertingHyperlinks)

        VARIANT_BOOL getAllowDeletingColumns();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowDeletingColumns(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowDeletingColumns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllowDeletingColumns, get=getAllowDeletingColumns)

        VARIANT_BOOL getAllowDeletingRows();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowDeletingRows(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowDeletingRows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllowDeletingRows, get=getAllowDeletingRows)

        VARIANT_BOOL getAllowSorting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowSorting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowSorting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllowSorting, get=getAllowSorting)

        VARIANT_BOOL getAllowFiltering();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowFiltering(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowFiltering()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllowFiltering, get=getAllowFiltering)

        VARIANT_BOOL getAllowUsingPivotTables();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowUsingPivotTables(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowUsingPivotTables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllowUsingPivotTables, get=getAllowUsingPivotTables)

        AllowEditRanges* getAllowEditRanges();
        %MethodCode
            etapi::AllowEditRanges *prop = nullptr;
            HRESULT hr = sipCpp->get_AllowEditRanges(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowEditRanges()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllowEditRanges, get=getAllowEditRanges)
    };
};
