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
    struct ISparkline : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Location(
            Range **RHS /Out/) = 0;

        virtual HRESULT putref_Location(
            Range *RHS) = 0;

        virtual HRESULT get_SourceData(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceData(
            BSTR RHS) = 0;

        virtual HRESULT ModifyLocation(
            Range *Range) = 0;

        virtual HRESULT ModifySourceData(
            BSTR Formula) = 0;

    };
};
