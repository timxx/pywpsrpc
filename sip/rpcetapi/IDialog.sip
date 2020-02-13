/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IDialog : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;
/*
        virtual HRESULT Show(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            VARIANT_BOOL *RHS /Out/) = 0;
*/
    };
};
