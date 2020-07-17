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
    struct TimeLine : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_MainSequence(
            Sequence **MainSequence /Out/) = 0;

        virtual HRESULT get_InteractiveSequences(
            Sequences **InteractiveSequences /Out/) = 0;

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
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

        Sequence* getMainSequence();
        %MethodCode
            wppapi::Sequence *prop = nullptr;
            HRESULT hr = sipCpp->get_MainSequence(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MainSequence()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MainSequence, get=getMainSequence)

        Sequences* getInteractiveSequences();
        %MethodCode
            wppapi::Sequences *prop = nullptr;
            HRESULT hr = sipCpp->get_InteractiveSequences(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InteractiveSequences()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InteractiveSequences, get=getInteractiveSequences)
    };
};
