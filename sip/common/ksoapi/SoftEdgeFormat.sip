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
    struct SoftEdgeFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Type(
            MsoSoftEdgeType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoSoftEdgeType Type) = 0;

        virtual HRESULT get_Radius(
            single *Radius /Out/) = 0;

        virtual HRESULT put_Radius(
            single Radius) = 0;

    };
};
