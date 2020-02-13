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
    struct IModelChanges : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_TablesAdded(
            ModelTableNames **RHS /Out/) = 0;

        virtual HRESULT get_TablesDeleted(
            ModelTableNames **RHS /Out/) = 0;

        virtual HRESULT get_TablesModified(
            ModelTableNames **RHS /Out/) = 0;

        virtual HRESULT get_TableNamesChanged(
            ModelTableNameChanges **RHS /Out/) = 0;

        virtual HRESULT get_RelationshipChange(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ColumnsAdded(
            ModelColumnNames **RHS /Out/) = 0;

        virtual HRESULT get_ColumnsDeleted(
            ModelColumnNames **RHS /Out/) = 0;

        virtual HRESULT get_ColumnsChanged(
            ModelColumnChanges **RHS /Out/) = 0;

        virtual HRESULT get_MeasuresAdded(
            ModelMeasureNames **RHS /Out/) = 0;

        virtual HRESULT get_UnknownChange(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Source(
            XlModelChangeSource *RHS /Out/) = 0;

    };
};
