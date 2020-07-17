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

        virtual HRESULT StartCustomRecord(
            BSTR Name = 0) = 0;

        virtual HRESULT EndCustomRecord() = 0;

        virtual HRESULT get_IsRecordingCustomRecord(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_CustomRecordName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_CustomRecordLevel(
            long *prop /Out/) = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        VARIANT_BOOL getIsRecordingCustomRecord();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsRecordingCustomRecord(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsRecordingCustomRecord()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsRecordingCustomRecord, get=getIsRecordingCustomRecord)

        BSTR getCustomRecordName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CustomRecordName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomRecordName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomRecordName, get=getCustomRecordName)

        long getCustomRecordLevel();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CustomRecordLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomRecordLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomRecordLevel, get=getCustomRecordLevel)
    };
};
