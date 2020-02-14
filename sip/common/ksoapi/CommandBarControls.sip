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
    struct CommandBarControls : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Add(
            VARIANT Type = argMissing2(),
            VARIANT Id = argMissing2(),
            VARIANT Parameter = argMissing2(),
            VARIANT Before = argMissing2(),
            VARIANT Temporary = argMissing2(),
            CommandBarControl **ppcbc /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            int *pcToolbarControls /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            CommandBarControl **ppcbc /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppienum /Out/) = 0;

        virtual HRESULT get_Parent(
            CommandBar **ppcb /Out/) = 0;

    };
};
