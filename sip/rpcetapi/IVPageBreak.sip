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
    struct IVPageBreak : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            Worksheet **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT DragOff(
            XlDirection Direction,
            long RegionIndex) = 0;

        virtual HRESULT get_Type(
            XlPageBreak *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            XlPageBreak RHS) = 0;

        virtual HRESULT get_Extent(
            XlPageBreakExtent *RHS /Out/) = 0;

        virtual HRESULT get_Location(
            Range **RHS /Out/) = 0;

        virtual HRESULT putref_Location(
            Range *RHS) = 0;

    };
};
