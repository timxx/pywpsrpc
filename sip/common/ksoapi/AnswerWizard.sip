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
    struct AnswerWizard : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Files(
            AnswerWizardFiles **Files /Out/) = 0;

        virtual HRESULT ClearFileList() = 0;

        virtual HRESULT ResetFileList() = 0;

        AnswerWizardFiles* getFiles();
        %MethodCode
            ksoapi::AnswerWizardFiles *prop = nullptr;
            HRESULT hr = sipCpp->get_Files(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Files()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Files, get=getFiles)
    };
};
