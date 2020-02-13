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
    struct IModelRelationship : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_ForeignKeyTable(
            ModelTable **RHS /Out/) = 0;

        virtual HRESULT get_ForeignKeyColumn(
            ModelTableColumn **RHS /Out/) = 0;

        virtual HRESULT get_PrimaryKeyTable(
            ModelTable **RHS /Out/) = 0;

        virtual HRESULT get_PrimaryKeyColumn(
            ModelTableColumn **RHS /Out/) = 0;

        virtual HRESULT get_Active(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Active(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Delete() = 0;

    };
};
