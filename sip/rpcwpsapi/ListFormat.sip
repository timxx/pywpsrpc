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
    struct ListFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_ListLevelNumber(
            long *prop /Out/) = 0;

        virtual HRESULT put_ListLevelNumber(
            long prop) = 0;

        virtual HRESULT get_List(
            List **prop /Out/) = 0;

        virtual HRESULT get_ListTemplate(
            ListTemplate **prop /Out/) = 0;

        virtual HRESULT get_ListValue(
            long *prop /Out/) = 0;

        virtual HRESULT get_SingleList(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_SingleListTemplate(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_ListType(
            WdListType *prop /Out/) = 0;

        virtual HRESULT get_ListString(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT CanContinuePreviousList(
            ListTemplate *ListTemplate,
            WdContinue *prop /Out/) = 0;

        virtual HRESULT RemoveNumbers(
            VARIANT *NumberType = argMissing()) = 0;

        virtual HRESULT ConvertNumbersToText(
            VARIANT *NumberType = argMissing()) = 0;

        virtual HRESULT CountNumberedItems(
            VARIANT *NumberType = argMissing(),
            VARIANT *Level = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT ApplyBulletDefaultOld() = 0;

        virtual HRESULT ApplyNumberDefaultOld() = 0;

        virtual HRESULT ApplyOutlineNumberDefaultOld() = 0;

        virtual HRESULT ApplyListTemplateOld(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing(),
            VARIANT *ApplyTo = argMissing()) = 0;

        virtual HRESULT ListOutdent() = 0;

        virtual HRESULT ListIndent() = 0;

        virtual HRESULT ApplyBulletDefault(
            VARIANT *DefaultListBehavior = argMissing()) = 0;

        virtual HRESULT ApplyNumberDefault(
            VARIANT *DefaultListBehavior = argMissing()) = 0;

        virtual HRESULT ApplyOutlineNumberDefault(
            VARIANT *DefaultListBehavior = argMissing()) = 0;

        virtual HRESULT ApplyListTemplate(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing(),
            VARIANT *ApplyTo = argMissing(),
            VARIANT *DefaultListBehavior = argMissing()) = 0;

        virtual HRESULT get_ListPictureBullet(
            InlineShape **prop /Out/) = 0;

        virtual HRESULT ApplyListTemplateWithLevel(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing(),
            VARIANT *ApplyTo = argMissing(),
            VARIANT *DefaultListBehavior = argMissing(),
            VARIANT *ApplyLevel = argMissing()) = 0;

        long getListLevelNumber();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ListLevelNumber(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListLevelNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setListLevelNumber(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ListLevelNumber(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ListLevelNumber()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ListLevelNumber, get=getListLevelNumber, set=setListLevelNumber)

        List* getList();
        %MethodCode
            wpsapi::List *prop = nullptr;
            HRESULT hr = sipCpp->get_List(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_List()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=List, get=getList)

        ListTemplate* getListTemplate();
        %MethodCode
            wpsapi::ListTemplate *prop = nullptr;
            HRESULT hr = sipCpp->get_ListTemplate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListTemplate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListTemplate, get=getListTemplate)

        long getListValue();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ListValue(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListValue()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListValue, get=getListValue)

        VARIANT_BOOL getSingleList();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SingleList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SingleList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SingleList, get=getSingleList)

        VARIANT_BOOL getSingleListTemplate();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SingleListTemplate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SingleListTemplate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SingleListTemplate, get=getSingleListTemplate)

        WdListType getListType();
        %MethodCode
            wpsapi::WdListType prop = (wpsapi::WdListType)0;
            HRESULT hr = sipCpp->get_ListType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListType, get=getListType)

        BSTR getListString();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ListString(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListString()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListString, get=getListString)

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

        InlineShape* getListPictureBullet();
        %MethodCode
            wpsapi::InlineShape *prop = nullptr;
            HRESULT hr = sipCpp->get_ListPictureBullet(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListPictureBullet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListPictureBullet, get=getListPictureBullet)
    };
};
