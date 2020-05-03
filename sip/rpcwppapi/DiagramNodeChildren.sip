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
    struct DiagramNodeChildren : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Creator(
            long *plCreator /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            DiagramNode **Node /Out/) = 0;

        DiagramNode* __getitem__(VARIANT index) const;
        %MethodCode
            wppapi::DiagramNode *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT AddNode(
            VARIANT Index = argMissing2(),
            MsoDiagramNodeType NodeType = wppapi::msoDiagramNode,
            DiagramNode **NewNode /Out/ = 0) = 0;

        virtual HRESULT SelectAll() = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *iDiagramNodes /Out/) = 0;

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_FirstChild(
            DiagramNode **First /Out/) = 0;

        virtual HRESULT get_LastChild(
            DiagramNode **Last /Out/) = 0;

        IDispatch* getApplication();
        %MethodCode
            IDispatch *prop = nullptr;
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

        long getCreator();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

        IUnknown* get_NewEnum();
        %MethodCode
            IUnknown *prop = nullptr;
            HRESULT hr = sipCpp->get__NewEnum(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__NewEnum()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_NewEnum, get=get_NewEnum)

        IDispatch* getParent();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Parent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Parent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Parent, get=getParent)

        int getCount();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

        DiagramNode* getFirstChild();
        %MethodCode
            wppapi::DiagramNode *prop = nullptr;
            HRESULT hr = sipCpp->get_FirstChild(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstChild()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FirstChild, get=getFirstChild)

        DiagramNode* getLastChild();
        %MethodCode
            wppapi::DiagramNode *prop = nullptr;
            HRESULT hr = sipCpp->get_LastChild(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LastChild()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LastChild, get=getLastChild)
    };
};
