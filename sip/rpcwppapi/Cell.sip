/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct Cell : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **Shape /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **Borders /Out/) = 0;

        virtual HRESULT Merge(
            Cell *MergeTo) = 0;

        virtual HRESULT Split(
            int NumRows,
            int NumColumns) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT get_Selected(
            VARIANT_BOOL *Selected /Out/) = 0;

    };
};
