/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct EndnoteOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Location(
            WdEndnoteLocation *prop /Out/) = 0;

        virtual HRESULT put_Location(
            WdEndnoteLocation prop) = 0;

        virtual HRESULT get_NumberStyle(
            WdNoteNumberStyle *prop /Out/) = 0;

        virtual HRESULT put_NumberStyle(
            WdNoteNumberStyle prop) = 0;

        virtual HRESULT get_StartingNumber(
            long *prop /Out/) = 0;

        virtual HRESULT put_StartingNumber(
            long prop) = 0;

        virtual HRESULT get_NumberingRule(
            WdNumberingRule *prop /Out/) = 0;

        virtual HRESULT put_NumberingRule(
            WdNumberingRule prop) = 0;

    };
};
