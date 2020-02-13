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
    struct ISparkVerticalAxis : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_MinScaleType(
            XlSparkScale *RHS /Out/) = 0;

        virtual HRESULT put_MinScaleType(
            XlSparkScale RHS) = 0;

        virtual HRESULT get_CustomMinScaleValue(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CustomMinScaleValue(
            VARIANT RHS) = 0;

        virtual HRESULT get_MaxScaleType(
            XlSparkScale *RHS /Out/) = 0;

        virtual HRESULT put_MaxScaleType(
            XlSparkScale RHS) = 0;

        virtual HRESULT get_CustomMaxScaleValue(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CustomMaxScaleValue(
            VARIANT RHS) = 0;

    };
};
