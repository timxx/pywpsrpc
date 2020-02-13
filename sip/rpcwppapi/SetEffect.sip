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
    struct SetEffect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Property(
            MsoAnimProperty *Property /Out/) = 0;

        virtual HRESULT put_Property(
            MsoAnimProperty Property) = 0;

        virtual HRESULT get_To(
            VARIANT *To /Out/) = 0;

        virtual HRESULT put_To(
            VARIANT To) = 0;

    };
};
