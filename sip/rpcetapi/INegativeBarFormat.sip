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
    struct INegativeBarFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_ColorType(
            XlDataBarNegativeColorType *RHS /Out/) = 0;

        virtual HRESULT put_ColorType(
            XlDataBarNegativeColorType RHS) = 0;

        virtual HRESULT get_BorderColorType(
            XlDataBarNegativeColorType *RHS /Out/) = 0;

        virtual HRESULT put_BorderColorType(
            XlDataBarNegativeColorType RHS) = 0;

        virtual HRESULT get_Color(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_BorderColor(
            IDispatch **RHS /Out/) = 0;

    };
};
