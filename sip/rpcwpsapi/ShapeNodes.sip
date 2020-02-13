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
    struct ShapeNodes : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT Delete(
            long Index) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            ShapeNode **prop /Out/) = 0;

        virtual HRESULT SetEditingType(
            long Index,
            MsoEditingType EditingType) = 0;

        virtual HRESULT SetPosition(
            long Index,
            single X1,
            single Y1) = 0;

        virtual HRESULT SetSegmentType(
            long Index,
            MsoSegmentType SegmentType) = 0;

        virtual HRESULT Insert(
            long Index,
            MsoSegmentType SegmentType,
            MsoEditingType EditingType,
            single X1,
            single Y1,
            single X2 = 0,
            single Y2 = 0,
            single X3 = 0,
            single Y3 = 0) = 0;

    };
};
