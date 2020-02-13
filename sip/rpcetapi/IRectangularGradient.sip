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
    struct IRectangularGradient : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_ColorStops(
            ColorStops **RHS /Out/) = 0;

        virtual HRESULT get_RectangleTop(
            double *RHS /Out/) = 0;

        virtual HRESULT put_RectangleTop(
            double RHS) = 0;

        virtual HRESULT get_RectangleBottom(
            double *RHS /Out/) = 0;

        virtual HRESULT put_RectangleBottom(
            double RHS) = 0;

        virtual HRESULT get_RectangleLeft(
            double *RHS /Out/) = 0;

        virtual HRESULT put_RectangleLeft(
            double RHS) = 0;

        virtual HRESULT get_RectangleRight(
            double *RHS /Out/) = 0;

        virtual HRESULT put_RectangleRight(
            double RHS) = 0;

    };
};
