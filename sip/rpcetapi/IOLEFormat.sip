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
    struct IOLEFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT get_Object(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_progID(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Verb(
            VARIANT Verb) = 0;

    };
};
