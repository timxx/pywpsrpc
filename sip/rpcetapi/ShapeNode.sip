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
    struct ShapeNode : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_EditingType(
            MsoEditingType *EditingType /Out/) = 0;

        virtual HRESULT get_Points(
            VARIANT *Points /Out/) = 0;

        virtual HRESULT get_SegmentType(
            MsoSegmentType *SegmentType /Out/) = 0;

    };
};
