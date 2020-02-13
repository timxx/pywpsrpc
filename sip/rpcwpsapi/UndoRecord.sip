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
    struct UndoRecord : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT StartCustomRecord(
            BSTR Name = 0) = 0;

        virtual HRESULT EndCustomRecord() = 0;

        virtual HRESULT get_IsRecordingCustomRecord(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_CustomRecordName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_CustomRecordLevel(
            long *prop /Out/) = 0;

    };
};
