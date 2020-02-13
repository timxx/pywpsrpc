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
    struct IFreeformBuilder : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT AddNodes(
            MsoSegmentType SegmentType,
            MsoEditingType EditingType,
            single X1,
            single Y1,
            VARIANT X2,
            VARIANT Y2,
            VARIANT X3,
            VARIANT Y3) = 0;

        virtual HRESULT ConvertToShape(
            Shape **RHS /Out/) = 0;

    };
};
