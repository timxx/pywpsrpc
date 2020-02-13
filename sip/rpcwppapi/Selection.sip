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
    struct Selection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Unselect() = 0;

        virtual HRESULT get_Type(
            PpSelectionType *Type /Out/) = 0;

        virtual HRESULT get_SlideRange(
            SlideRange **SlideRange /Out/) = 0;

        virtual HRESULT get_ShapeRange(
            ShapeRange **ShapeRange /Out/) = 0;

        virtual HRESULT get_TextRange(
            TextRange **TextRange /Out/) = 0;

        virtual HRESULT get_ChildShapeRange(
            ShapeRange **ChildShapeRange /Out/) = 0;

        virtual HRESULT get_HasChildShapeRange(
            VARIANT_BOOL *HasChildShapeRange /Out/) = 0;

        virtual HRESULT get_TextRange2(
            ksoapi::TextRange2 **TextRange2 /Out/) = 0;

    };
};
