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
    struct Coauthoring : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_MergeMode(
            VARIANT_BOOL *MergeMode /Out/) = 0;

        virtual HRESULT get_FavorServerEditsDuringMerge(
            VARIANT_BOOL *FavorServerEditsDuringMerge /Out/) = 0;

        virtual HRESULT put_FavorServerEditsDuringMerge(
            VARIANT_BOOL FavorServerEditsDuringMerge) = 0;

        virtual HRESULT EndReview() = 0;

        virtual HRESULT get_PendingUpdates(
            VARIANT_BOOL *PendingUpdates /Out/) = 0;

        virtual HRESULT get_CoauthorCount(
            long *CoauthorCount /Out/) = 0;

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

        VARIANT_BOOL getMergeMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MergeMode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MergeMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MergeMode, get=getMergeMode)

        VARIANT_BOOL getFavorServerEditsDuringMerge();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FavorServerEditsDuringMerge(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FavorServerEditsDuringMerge()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFavorServerEditsDuringMerge(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FavorServerEditsDuringMerge(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FavorServerEditsDuringMerge()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FavorServerEditsDuringMerge, get=getFavorServerEditsDuringMerge, set=setFavorServerEditsDuringMerge)

        VARIANT_BOOL getPendingUpdates();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PendingUpdates(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PendingUpdates()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PendingUpdates, get=getPendingUpdates)

        long getCoauthorCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CoauthorCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CoauthorCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CoauthorCount, get=getCoauthorCount)
    };
};
