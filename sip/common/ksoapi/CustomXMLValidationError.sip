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
    struct CustomXMLValidationError : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT get_Node(
            CustomXMLNode **ppNode /Out/) = 0;

        virtual HRESULT get_Text(
            BSTR *pbstrText /Out/) = 0;

        virtual HRESULT get_Type(
            MsoCustomXMLValidationErrorType *pErrorType /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_ErrorCode(
            long *plErrorCode /Out/) = 0;

    };
};
