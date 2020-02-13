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
    struct IListObjects : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT _Add(
            XlListObjectSourceType SourceType,
            VARIANT Source,
            VARIANT LinkSource,
            XlYesNoGuess XlListObjectHasHeaders,
            VARIANT Destination,
            ListObject **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            ListObject **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            ListObject **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT Add(
            XlListObjectSourceType SourceType,
            VARIANT Source,
            VARIANT LinkSource,
            XlYesNoGuess XlListObjectHasHeaders,
            VARIANT Destination,
            VARIANT TableStyleName,
            ListObject **RHS /Out/) = 0;

    };
};
