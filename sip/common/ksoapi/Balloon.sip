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
    struct Balloon : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Checkboxes(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Labels(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT put_BalloonType(
            MsoBalloonType pbty) = 0;

        virtual HRESULT get_BalloonType(
            MsoBalloonType *pbty /Out/) = 0;

        virtual HRESULT put_Icon(
            MsoIconType picn) = 0;

        virtual HRESULT get_Icon(
            MsoIconType *picn /Out/) = 0;

        virtual HRESULT put_Heading(
            BSTR pbstr) = 0;

        virtual HRESULT get_Heading(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR pbstr) = 0;

        virtual HRESULT get_Text(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_Mode(
            MsoModeType pmd) = 0;

        virtual HRESULT get_Mode(
            MsoModeType *pmd /Out/) = 0;

        virtual HRESULT put_Animation(
            MsoAnimationType pfca) = 0;

        virtual HRESULT get_Animation(
            MsoAnimationType *pfca /Out/) = 0;

        virtual HRESULT put_Button(
            MsoButtonSetType psbs) = 0;

        virtual HRESULT get_Button(
            MsoButtonSetType *psbs /Out/) = 0;

        virtual HRESULT put_Callback(
            BSTR pbstr) = 0;

        virtual HRESULT get_Callback(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_Private(
            long plPrivate) = 0;

        virtual HRESULT get_Private(
            long *plPrivate /Out/) = 0;

        virtual HRESULT SetAvoidRectangle(
            int Left,
            int Top,
            int Right,
            int Bottom) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT Show(
            MsoBalloonButtonType *pibtn /Out/) = 0;

        virtual HRESULT Close() = 0;

    };
};
