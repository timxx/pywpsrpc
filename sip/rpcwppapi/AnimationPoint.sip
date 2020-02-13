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
    struct AnimationPoint : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Time(
            single *Time /Out/) = 0;

        virtual HRESULT put_Time(
            single Time) = 0;

        virtual HRESULT get_Value(
            VARIANT *Value /Out/) = 0;

        virtual HRESULT put_Value(
            VARIANT Value) = 0;

        virtual HRESULT get_Formula(
            BSTR *Formula /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR Formula) = 0;

    };
};
