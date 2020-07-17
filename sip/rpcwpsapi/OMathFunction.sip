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
    struct OMathFunction : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Type(
            WdOMathFunctionType *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Args(
            OMathArgs **prop /Out/) = 0;

        virtual HRESULT get_Acc(
            OMathAcc **prop /Out/) = 0;

        virtual HRESULT get_Bar(
            OMathBar **prop /Out/) = 0;

        virtual HRESULT get_Box(
            OMathBox **prop /Out/) = 0;

        virtual HRESULT get_BorderBox(
            OMathBorderBox **prop /Out/) = 0;

        virtual HRESULT get_Delim(
            OMathDelim **prop /Out/) = 0;

        virtual HRESULT get_EqArray(
            OMathEqArray **prop /Out/) = 0;

        virtual HRESULT get_Frac(
            OMathFrac **prop /Out/) = 0;

        virtual HRESULT get_Func(
            OMathFunc **prop /Out/) = 0;

        virtual HRESULT get_GroupChar(
            OMathGroupChar **prop /Out/) = 0;

        virtual HRESULT get_LimLow(
            OMathLimLow **prop /Out/) = 0;

        virtual HRESULT get_LimUpp(
            OMathLimUpp **prop /Out/) = 0;

        virtual HRESULT get_Mat(
            OMathMat **prop /Out/) = 0;

        virtual HRESULT get_Nary(
            OMathNary **prop /Out/) = 0;

        virtual HRESULT get_Phantom(
            OMathPhantom **prop /Out/) = 0;

        virtual HRESULT get_ScrPre(
            OMathScrPre **prop /Out/) = 0;

        virtual HRESULT get_Rad(
            OMathRad **prop /Out/) = 0;

        virtual HRESULT get_ScrSub(
            OMathScrSub **prop /Out/) = 0;

        virtual HRESULT get_ScrSubSup(
            OMathScrSubSup **prop /Out/) = 0;

        virtual HRESULT get_ScrSup(
            OMathScrSup **prop /Out/) = 0;

        virtual HRESULT get_OMath(
            OMath **prop /Out/) = 0;

        virtual HRESULT Remove(
            OMathFunction **prop /Out/) = 0;

        WdOMathFunctionType getType();
        %MethodCode
            wpsapi::WdOMathFunctionType prop = (wpsapi::WdOMathFunctionType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Type, get=getType)

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

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

        OMathArgs* getArgs();
        %MethodCode
            wpsapi::OMathArgs *prop = nullptr;
            HRESULT hr = sipCpp->get_Args(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Args()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Args, get=getArgs)

        OMathAcc* getAcc();
        %MethodCode
            wpsapi::OMathAcc *prop = nullptr;
            HRESULT hr = sipCpp->get_Acc(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Acc()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Acc, get=getAcc)

        OMathBar* getBar();
        %MethodCode
            wpsapi::OMathBar *prop = nullptr;
            HRESULT hr = sipCpp->get_Bar(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Bar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Bar, get=getBar)

        OMathBox* getBox();
        %MethodCode
            wpsapi::OMathBox *prop = nullptr;
            HRESULT hr = sipCpp->get_Box(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Box()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Box, get=getBox)

        OMathBorderBox* getBorderBox();
        %MethodCode
            wpsapi::OMathBorderBox *prop = nullptr;
            HRESULT hr = sipCpp->get_BorderBox(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BorderBox()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BorderBox, get=getBorderBox)

        OMathDelim* getDelim();
        %MethodCode
            wpsapi::OMathDelim *prop = nullptr;
            HRESULT hr = sipCpp->get_Delim(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Delim()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Delim, get=getDelim)

        OMathEqArray* getEqArray();
        %MethodCode
            wpsapi::OMathEqArray *prop = nullptr;
            HRESULT hr = sipCpp->get_EqArray(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EqArray()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EqArray, get=getEqArray)

        OMathFrac* getFrac();
        %MethodCode
            wpsapi::OMathFrac *prop = nullptr;
            HRESULT hr = sipCpp->get_Frac(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Frac()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Frac, get=getFrac)

        OMathFunc* getFunc();
        %MethodCode
            wpsapi::OMathFunc *prop = nullptr;
            HRESULT hr = sipCpp->get_Func(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Func()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Func, get=getFunc)

        OMathGroupChar* getGroupChar();
        %MethodCode
            wpsapi::OMathGroupChar *prop = nullptr;
            HRESULT hr = sipCpp->get_GroupChar(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GroupChar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=GroupChar, get=getGroupChar)

        OMathLimLow* getLimLow();
        %MethodCode
            wpsapi::OMathLimLow *prop = nullptr;
            HRESULT hr = sipCpp->get_LimLow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LimLow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LimLow, get=getLimLow)

        OMathLimUpp* getLimUpp();
        %MethodCode
            wpsapi::OMathLimUpp *prop = nullptr;
            HRESULT hr = sipCpp->get_LimUpp(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LimUpp()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LimUpp, get=getLimUpp)

        OMathMat* getMat();
        %MethodCode
            wpsapi::OMathMat *prop = nullptr;
            HRESULT hr = sipCpp->get_Mat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Mat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Mat, get=getMat)

        OMathNary* getNary();
        %MethodCode
            wpsapi::OMathNary *prop = nullptr;
            HRESULT hr = sipCpp->get_Nary(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Nary()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Nary, get=getNary)

        OMathPhantom* getPhantom();
        %MethodCode
            wpsapi::OMathPhantom *prop = nullptr;
            HRESULT hr = sipCpp->get_Phantom(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Phantom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Phantom, get=getPhantom)

        OMathScrPre* getScrPre();
        %MethodCode
            wpsapi::OMathScrPre *prop = nullptr;
            HRESULT hr = sipCpp->get_ScrPre(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScrPre()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ScrPre, get=getScrPre)

        OMathRad* getRad();
        %MethodCode
            wpsapi::OMathRad *prop = nullptr;
            HRESULT hr = sipCpp->get_Rad(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Rad()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Rad, get=getRad)

        OMathScrSub* getScrSub();
        %MethodCode
            wpsapi::OMathScrSub *prop = nullptr;
            HRESULT hr = sipCpp->get_ScrSub(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScrSub()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ScrSub, get=getScrSub)

        OMathScrSubSup* getScrSubSup();
        %MethodCode
            wpsapi::OMathScrSubSup *prop = nullptr;
            HRESULT hr = sipCpp->get_ScrSubSup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScrSubSup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ScrSubSup, get=getScrSubSup)

        OMathScrSup* getScrSup();
        %MethodCode
            wpsapi::OMathScrSup *prop = nullptr;
            HRESULT hr = sipCpp->get_ScrSup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScrSup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ScrSup, get=getScrSup)

        OMath* getOMath();
        %MethodCode
            wpsapi::OMath *prop = nullptr;
            HRESULT hr = sipCpp->get_OMath(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OMath, get=getOMath)
    };
};
