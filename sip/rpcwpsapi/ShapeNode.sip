/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct ShapeNode : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_EditingType(
            MsoEditingType *prop /Out/) = 0;

        virtual HRESULT get_Points(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_SegmentType(
            MsoSegmentType *prop /Out/) = 0;

    };
};
