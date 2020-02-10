/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct ShapeNodes : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            ShapeNode **Item /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT Delete(
            int Index) = 0;

        virtual HRESULT Insert(
            int Index,
            MsoSegmentType SegmentType,
            MsoEditingType EditingType,
            single X1,
            single Y1,
            single X2 = 0,
            single Y2 = 0,
            single X3 = 0,
            single Y3 = 0) = 0;

        virtual HRESULT SetEditingType(
            int Index,
            MsoEditingType EditingType) = 0;

        virtual HRESULT SetPosition(
            int Index,
            single X1,
            single Y1) = 0;

        virtual HRESULT SetSegmentType(
            int Index,
            MsoSegmentType SegmentType) = 0;
    };

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