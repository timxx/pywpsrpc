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
    struct ISparkPoints : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Negative(
            SparkColor **RHS /Out/) = 0;

        virtual HRESULT get_Markers(
            SparkColor **RHS /Out/) = 0;

        virtual HRESULT get_Highpoint(
            SparkColor **RHS /Out/) = 0;

        virtual HRESULT get_Lowpoint(
            SparkColor **RHS /Out/) = 0;

        virtual HRESULT get_Firstpoint(
            SparkColor **RHS /Out/) = 0;

        virtual HRESULT get_Lastpoint(
            SparkColor **RHS /Out/) = 0;

    };
};
