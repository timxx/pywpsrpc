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
    struct MotionEffect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_ByX(
            single *ByX /Out/) = 0;

        virtual HRESULT put_ByX(
            single ByX) = 0;

        virtual HRESULT get_ByY(
            single *ByY /Out/) = 0;

        virtual HRESULT put_ByY(
            single ByY) = 0;

        virtual HRESULT get_FromX(
            single *FromX /Out/) = 0;

        virtual HRESULT put_FromX(
            single FromX) = 0;

        virtual HRESULT get_FromY(
            single *FromY /Out/) = 0;

        virtual HRESULT put_FromY(
            single FromY) = 0;

        virtual HRESULT get_ToX(
            single *ToX /Out/) = 0;

        virtual HRESULT put_ToX(
            single ToX) = 0;

        virtual HRESULT get_ToY(
            single *ToY /Out/) = 0;

        virtual HRESULT put_ToY(
            single ToY) = 0;

        virtual HRESULT get_Path(
            BSTR *Path /Out/) = 0;

        virtual HRESULT put_Path(
            BSTR Path) = 0;

    };
};
