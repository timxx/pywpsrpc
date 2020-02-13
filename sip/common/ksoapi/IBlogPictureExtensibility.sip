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
    struct IBlogPictureExtensibility : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT BlogPictureProviderProperties(
            BSTR *BlogPictureProvider /Out/,
            BSTR *FriendlyName /Out/) = 0;

        virtual HRESULT CreatePictureAccount(
            BSTR Account,
            BSTR BlogProvider,
            long ParentWindow,
            IDispatch *Document) = 0;

        virtual HRESULT PublishPicture(
            BSTR Account,
            long ParentWindow,
            IDispatch *Document,
            IUnknown *Image,
            BSTR *PictureURI /Out/,
            long ImageType) = 0;

    };
};
