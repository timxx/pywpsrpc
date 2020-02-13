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
    struct CommandEffect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Type(
            MsoAnimCommandType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoAnimCommandType Type) = 0;

        virtual HRESULT get_Command(
            BSTR *Command /Out/) = 0;

        virtual HRESULT put_Command(
            BSTR Command) = 0;

        virtual HRESULT get_bookmark(
            BSTR *bookmark /Out/) = 0;

        virtual HRESULT put_bookmark(
            BSTR bookmark) = 0;

    };
};
