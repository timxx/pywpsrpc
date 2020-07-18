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
    struct DiagramNodeChildren : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Item(
            VARIANT Index,
            DiagramNode **ppNode /Out/) = 0;

        DiagramNode* __getitem__(VARIANT index) const;
        %MethodCode
            etapi::DiagramNode *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT AddNode(
            VARIANT Index = argMissing2(),
            MsoDiagramNodeType nodeType = etapi::msoDiagramNode,
            DiagramNode **ppNewNode /Out/ = 0) = 0;

        virtual HRESULT SelectAll() = 0;

        virtual HRESULT get_Count(
            int *pcDiagramNodes /Out/) = 0;

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_FirstChild(
            DiagramNode **pFirst /Out/) = 0;

        virtual HRESULT get_LastChild(
            DiagramNode **pLast /Out/) = 0;

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
            etapi::DiagramNode *prop = nullptr;
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
            etapi::DiagramNode *prop = nullptr;
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
