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
    struct DiagramNodes : public IDispatch /Abstract/
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
            DiagramNode **ppdn /Out/) = 0;

        DiagramNode* __getitem__(VARIANT index) const;
        %MethodCode
            wppapi::DiagramNode *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

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

    };
};
